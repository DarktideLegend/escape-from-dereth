using ACE.Common;
using ACE.DatLoader.Entity.AnimationHooks;
using ACE.Entity;
using ACE.Entity.Models;
using ACE.Server.Entity;
using ACE.Server.EscapeFromDereth.Common;
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
        private static int MaxActiveHellgates = 1;

        // This should be defined in PropertyManager
        private static TimeSpan HellgateTimer = TimeSpan.FromMinutes(2); 

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

        public class Hellgate
        {
            public readonly ImmutableList<Player> Players;
            public readonly LandblockId Landblock;
            public readonly uint Instance;
            public Hellgate(LandblockId landblock, ImmutableList<Player> players, uint instance)
            {
                Players = players;
                Landblock = landblock;
                Instance = instance;
            }

            public void Destroy()
            {
                Players.Clear();
            }
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

        private static void Cleanup()
        {
            foreach(var hellgate in ActiveHellgates.Values)
            {
                foreach(var player in hellgate.Players)
                {
                    if (player != null)
                    {
                        player.ExitInstance();
                    }
                }
                hellgate.Destroy();
            }

            ActiveHellgates.Clear();
        }

        public static Position CreateHellGate(Player leader, List<Realm> appliedRulesets)
        {

            if (!CreateHellGateValidator(leader))
                return null;

            var allowedPlayers = leader.Fellowship.GetFellowshipMembers().Values.ToImmutableList();
            var ephemeralRealm = RealmManager.GetNewEphemeralLandblock(CurrentHellgatePosition.LandblockId, leader, appliedRulesets, allowedPlayers);
            var instance = ephemeralRealm.Instance;
            var hellgate = new Hellgate(CurrentHellgatePosition.LandblockId, allowedPlayers, instance);
            var targetPosition = CurrentHellgatePosition;
            targetPosition.Instance = instance;
            ActiveHellgates.Add(instance, hellgate);
            return targetPosition;
        }

        private static bool CreateHellGateValidator(Player leader)
        {
            if (HasReachedCapacity)
            {
                leader.SendMessage("Hellgates are currently at max capacity");
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

            foreach(var member in fellowship.GetFellowshipMembers().Values)
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
