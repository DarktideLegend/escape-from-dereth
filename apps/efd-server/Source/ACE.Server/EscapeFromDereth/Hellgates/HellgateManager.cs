using ACE.Common;
using ACE.Entity;
using ACE.Entity.Models;
using ACE.Server.Entity;
using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.EscapeFromDereth.Hellgates.Entity;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using log4net;

using System;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Linq;

namespace ACE.Server.EscapeFromDereth.Hellgates
{
    internal class HellgateManager
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private static readonly Dictionary<ushort, Position> HellgateLandblocks = new Dictionary<ushort, Position>()
        {
            { 0x02F0, EFDHelpers.slocToPosition("0x02F00152 [140.000000 -130.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 393216") } // Hills Citadel
        };

        private static readonly Position CurrentHellgatePosition = HellgateLandblocks[0x02F0];

        private static readonly Dictionary<uint, Hellgate> ActiveHellgates = new Dictionary<uint, Hellgate>();

        // This should be defined in PropertyManager
        private static int MaxActiveHellgates = 5;

        // This should be defined in PropertyManager
        private static TimeSpan HellgateTimer = TimeSpan.FromMinutes(5);

        private static bool IsCleaning = false;

        public static double HellgateExpiration { get; private set; } = Time.GetUnixTime() + HellgateTimer.TotalSeconds;

        public static double TimeRemaining
        {
            get
            {
                return HellgateExpiration - Time.GetUnixTime();
            }
        }

        public static bool HasReachedCapacity
        {
            get
            {
                return ActiveHellgates.Count == MaxActiveHellgates;
            }
        }

        public static Hellgate GetHellgate(uint instance)
        {
            return ActiveHellgates[instance];
        }

        public static bool PositionIsHellgate(Position pos)
        {
            if (pos == null) return false;
            return pos.IsEphemeralRealm && ActiveHellgates[pos.Instance] != null;
        }

        public static void Tick(double currentUnixTime)
        {
            if (HellgateExpiration < currentUnixTime)
            {
                Cleanup();
                HellgateExpiration = currentUnixTime + HellgateTimer.TotalSeconds;
                return;
            }
        }

        public static void RemovePlayerFromHellgate(Player player)
        {
            var hellgate = ActiveHellgates[player.Location.Instance];

            if (hellgate != null && hellgate.Players.Contains(player))
            {
                hellgate.RemovePlayer(player);
                log.Info($"Removed {player.Name} from hellgate {hellgate.Instance}");
            }
        }

        private static void Cleanup()
        {
            if (IsCleaning)
                return;

            IsCleaning = true;
            log.Info($"Cleaning up hellgates");
            foreach (var hellgate in ActiveHellgates.Values.ToList())
            {
                log.Info($"Destroying hellgate {hellgate.Instance}");
                hellgate.Destroy();
            }

            ActiveHellgates.Clear();
            IsCleaning = false;
        }

        public static Position CreateHellGate(Player leader, List<Realm> appliedRulesets)
        {
            if (!CreateHellGateValidator(leader))
                return null;

            var allowedPlayers = leader.Fellowship.GetFellowshipMembers().Values.ToList();
            var ephemeralRealm = RealmManager.GetNewEphemeralLandblock(CurrentHellgatePosition.LandblockId, leader, appliedRulesets, allowedPlayers);
            var instance = ephemeralRealm.Instance;
            var hellgate = new Hellgate(CurrentHellgatePosition.LandblockId, allowedPlayers, new Position(leader.Location), instance);
            var targetPosition = CurrentHellgatePosition;
            targetPosition.Instance = instance;
            ActiveHellgates.Add(instance, hellgate);

            log.Info($"Creating Hellgate for {leader.Name} - {instance}");
            return targetPosition;
        }

        private static bool CreateHellGateValidator(Player leader)
        {
            if (HasReachedCapacity)
            {
                leader.SendMessage("Hellgates have reached max capacity. Try again later.");
                return false;
            }

            var fellowship = leader.Fellowship;

            if (fellowship == null)
            {
                leader.SendMessage($"You must be in a fellowship to use a hellgate.");
                return false;
            }

            var isFellowshipLeader = fellowship.FellowshipLeaderGuid == leader.Guid.Full;

            if (!isFellowshipLeader)
            {
                leader.SendMessage($"You must be the leader of the fellowship to use a hellgate.");
                return false;
            }

            if (!FellowshipValidator(fellowship, leader))
                return false;

            return true;
        }
        private static bool FellowshipValidator(Fellowship fellowship, Player leader)
        {
            if (fellowship.FellowshipMembers.Count == 1)
                return true;

            foreach (var member in fellowship.GetFellowshipMembers().Values.ToList())
            {
                if (member == leader)
                    continue;

                // fellowship members entering a hellgate must be in the same general location
                if (member.Location.DistanceTo(leader.Location) > 30)
                {

                    leader.SendMessage($"All fellowship members need to be within range to enter a hellgate.");
                    return false;
                }
            }

            return true;
        }
    }
}
