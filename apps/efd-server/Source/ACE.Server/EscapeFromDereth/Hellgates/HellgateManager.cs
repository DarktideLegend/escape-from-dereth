using ACE.Common;
using ACE.Entity;
using ACE.Entity.Models;
using ACE.Server.Entity;
using ACE.Server.Entity.Actions;
using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.EscapeFromDereth.Hellgates.Entity;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using log4net;
using System;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Linq;
using System.Threading;

namespace ACE.Server.EscapeFromDereth.Hellgates
{
    internal class HellgateManager
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private static readonly ReaderWriterLockSlim hellgateLock = new ReaderWriterLockSlim();

        private static readonly Dictionary<ushort, HellgateLandblock> HellgateLandblocks = new Dictionary<ushort, HellgateLandblock>()
        {
            { 0x02F0, new HellgateLandblock(EFDHelpers.slocToPosition("0x02F00152 [140.000000 -130.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 393216"), "Hills Citadel") },
            { 0x5875, new HellgateLandblock(EFDHelpers.slocToPosition("0x58750294 [180.000000 -109.111000 6.505000] 1.000000 0.000000 0.000000 0.000000 393216"), "Rynthid Genesis") }, 
            { 0x03A3, new HellgateLandblock(EFDHelpers.slocToPosition("0x03A30201 [70.000000 -590.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 393216"), "Northern Infiltrator Keep") }, 
            { 0x5D49, new HellgateLandblock(EFDHelpers.slocToPosition("0x5D49014D [90.000000 0.000000 0.010000] 0.000000 0.000000 0.000000 -1.000000 393216"), "Olthoi Arcade South") }, 
            { 0x8B03, new HellgateLandblock(EFDHelpers.slocToPosition("0x8B0303FF [110.026001 -150.014008 -17.995001] 1.000000 0.000000 0.000000 0.000000 393216"), "Apostate Nexus") }, 
            { 0x007E, new HellgateLandblock(EFDHelpers.slocToPosition("0x007E0353 [10.000000 -560.000000 0.010000] 1.000000 0.000000 0.000000 0.000000 393216"), "Black Spear Temple Upper") },
            { 0x00DC, new HellgateLandblock(EFDHelpers.slocToPosition("0x00DC016C [0.000000 -55.017300 -5.990000] 1.000000 0.000000 0.000000 0.000000 393216"), "Moarsmen Priory") }
        };

        private static double NextHeartbeatTime;

        private static readonly double HeartbeatInterval = 5.0f;

        private static readonly ImmutableList<ushort> HellgateLandblockKeys = HellgateLandblocks.Keys.ToImmutableList(); 

        private static readonly Dictionary<uint, Hellgate> ActiveHellgates = new Dictionary<uint, Hellgate>();

        private static readonly HashSet<HellgateGroup> HellgateGroups = new HashSet<HellgateGroup>();

        private static readonly HashSet<HellgatePurgatory> HellgatePurgatories = new HashSet<HellgatePurgatory>();

        public static HellgateGroup CurrentHellgateGroup;

        public static void Initialize()
        {
            InitializeHeartbeats();
            CreateHellgateGroup();
        }

        private static void InitializeHeartbeats()
        {
            var currentUnixTime = Time.GetUnixTime();
            NextHeartbeatTime = currentUnixTime + HeartbeatInterval;
        }

        private static void CreateHellgateGroup()
        {
            lock (hellgateLock)
            {
                var index = ThreadSafeRandom.Next(0, HellgateLandblocks.Count - 1);
                var landblockShort = HellgateLandblockKeys[index];
                var landblock = HellgateLandblocks[landblockShort];
                var landblockPosition = landblock.DropLocation;

                var timespan = ThreadSafeRandom.Next(15, 30); // hellgates are open for 15-30 minutes

                CurrentHellgateGroup = new HellgateGroup(landblockPosition, 3, 5);
                HellgateGroups.Add(CurrentHellgateGroup);
                log.Info($"Created HellgateGroup - {CurrentHellgateGroup.Guid}");
            }
        }

        public static Hellgate GetHellgate(uint instance)
        {
            lock(hellgateLock)
            {
                return ActiveHellgates[instance];
            }
        }

        public static bool PositionIsHellgate(Position pos)
        {
            if (pos == null) return false;

            lock (hellgateLock)
            {
                return pos.IsEphemeralRealm && (ActiveHellgates.Keys.Contains(pos.Instance) ||
                    HellgatePurgatories.ToList().Find(purgatory => purgatory.Instance == pos.Instance) != null);
            }
        }

        public static void Tick(double currentUnixTime)
        {
            if (NextHeartbeatTime > currentUnixTime)
                return;

            lock (hellgateLock)
            {
                if (CurrentHellgateGroup.HellgateGroupExpiration < currentUnixTime || CurrentHellgateGroup.HasReachedCapacity)
                    CreateHellgateGroup();

                foreach(var hellgateGroup in HellgateGroups.ToList())
                {

                    if (hellgateGroup != null && hellgateGroup.HellgateGroupExpiration < currentUnixTime)
                        CleanupHellgateGroup(hellgateGroup);
                }

                foreach(var hellgatePurgatory in HellgatePurgatories.ToList())
                {
                    if (hellgatePurgatory != null && hellgatePurgatory.ArenaExpiration < currentUnixTime)
                        CleanupHellgatePurgatory(hellgatePurgatory);
                }
            }

            NextHeartbeatTime = currentUnixTime + HeartbeatInterval;
        }

        private static void CleanupHellgatePurgatory(HellgatePurgatory hellgatePurgatory)
        {
            foreach (var player in hellgatePurgatory.Players.ToList())
            {
                RemovePlayerFromHellgate(player);
                player.ExitInstance();
            }

            HellgatePurgatories.Remove(hellgatePurgatory);
            hellgatePurgatory.Destroy();
        }

        public static void RemovePlayerFromHellgate(Player player)
        {
            lock (hellgateLock)
            {
                var instance = player.Location.Instance;

                if(ActiveHellgates.TryGetValue(instance, out Hellgate hellgate))
                {
                    hellgate.RemovePlayer(player);
                    log.Info($"Removed {player.Name} from hellgate {hellgate.Instance}");
                    return;
                }

                var purgatory = HellgatePurgatories.ToList().FirstOrDefault();
                if (purgatory != null && purgatory.Players.Contains(player))
                {
                    purgatory.RemovePlayer(player);
                    log.Info($"Removed {player.Name} from hellgate purgatory {purgatory.Instance}");
                    return;
                }
            }
        }

        private static void CleanupHellgateGroup(HellgateGroup hellgateGroup)
        {
            var hellgatePurgatoryPlayers = new HashSet<Player>();
            var arenaLocation = hellgateGroup.Location;

            lock (hellgateLock)
            {
                foreach (var hellgate in hellgateGroup.GetAllHellgates())
                {
                    foreach (var player in hellgate.Players.ToList())
                    {
                        RemovePlayerFromHellgate(player);
                        hellgatePurgatoryPlayers.Add(player);
                    }

                    ActiveHellgates.Remove(hellgate.Instance);
                }
            }

            var defaultPlayer = hellgatePurgatoryPlayers.FirstOrDefault();

            if (hellgatePurgatoryPlayers.Count > 0)
                CreateHellgatePurgatory(arenaLocation, defaultPlayer, hellgatePurgatoryPlayers);

            HellgateGroups.Remove(hellgateGroup);
            hellgateGroup.Destroy();
        }

        private static void CreateHellgatePurgatory(Position arenaLocation, Player leader, HashSet<Player> hellgatePurgatoryPlayers)
        {
            var rules = new List<Realm>()
            {
                RealmManager.GetRealm(leader.HomeRealm).Realm,
                RealmManager.GetRealm(1017).Realm // hellgate ruleset
            };

            var timespan = TimeSpan.FromMinutes(1); // purgatory only lasts 2 minutes for testing
            var expiration = Time.GetUnixTime() + timespan.TotalSeconds;
            var ephemeralRealm = RealmManager.GetNewEphemeralLandblock(arenaLocation.LandblockId, leader , rules, hellgatePurgatoryPlayers.ToList());
            var instance = ephemeralRealm.Instance;
            var hellgatePurgatory = new HellgatePurgatory(arenaLocation.LandblockId, hellgatePurgatoryPlayers, new Position(leader.Location), expiration, instance);

            HellgatePurgatories.Add(hellgatePurgatory);

            lock(hellgateLock)
            {
                foreach (var player in hellgatePurgatoryPlayers.ToList())
                {
                    var arenaPosition = new Position(player.Location);
                    arenaPosition.Instance = instance;
                    WorldManager.ThreadSafeTeleport(player, arenaPosition, true, new ActionEventDelegate(() =>
                    {
                        log.Info($"Player {player.Name} has entered a hellgate purgatory {instance}");
                    }));
                }
            }
        }

        public static Position CreateHellGate(Player leader, List<Realm> appliedRulesets)
        {
            if (!CreateHellgateValidator(leader))
                return null;

            if (CurrentHellgateGroup.HasReachedCapacity)
                CreateHellgateGroup();

            var allowedPlayers = leader.Fellowship.GetFellowshipMembers().Values.ToList();
            var ephemeralRealm = RealmManager.GetNewEphemeralLandblock(CurrentHellgateGroup.Location.LandblockId, leader, appliedRulesets, allowedPlayers);
            var instance = ephemeralRealm.Instance;
            var hellgate = new Hellgate(CurrentHellgateGroup.Location.LandblockId, allowedPlayers.ToHashSet(), new Position(leader.Location), instance);
            var targetPosition = CurrentHellgateGroup.Location;
            targetPosition.Instance = instance;

            CurrentHellgateGroup.AddHellgate(hellgate);
            ActiveHellgates.Add(instance, hellgate);

            log.Info($"Creating Hellgate for {leader.Name} - {instance}");
            return targetPosition;
        }

        private static bool CreateHellgateValidator(Player leader)
        {
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
