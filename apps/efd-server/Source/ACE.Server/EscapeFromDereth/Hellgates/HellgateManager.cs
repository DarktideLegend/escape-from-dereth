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
using System.Collections.Concurrent;
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

        private static readonly ConcurrentDictionary<uint, Hellgate> ActiveHellgates = new ConcurrentDictionary<uint, Hellgate>();

        private static readonly Queue<HellgateGroup> HellgateGroups = new Queue<HellgateGroup>();

        public static HellgateGroup CurrentHellgateGroup { get; private set; }

        public static void Initialize()
        {
            InitializeHeartbeat();
            CreateHellgateGroup();
        }

        private static void InitializeHeartbeat()
        {
            var currentUnixTime = Time.GetUnixTime();
            NextHeartbeatTime = currentUnixTime + HeartbeatInterval;
        }

        private static HellgateGroup CreateHellgateGroup(int timespan = 3, int maxHellgates = 2)
        {
            lock (hellgateLock)
            {
                var index = ThreadSafeRandom.Next(0, HellgateLandblocks.Count - 1);
                var landblockShort = HellgateLandblockKeys[index];
                var landblock = HellgateLandblocks[landblockShort];

                if (timespan == 0)
                    timespan = 30; // hellgates are open for 30 minutes

                var hellgateGroup = new HellgateGroup(landblock, timespan, maxHellgates, GuidManager.NewDynamicGuid());
                CurrentHellgateGroup = hellgateGroup;
                HellgateGroups.Enqueue(hellgateGroup);

                log.Info($"Created HellgateGroup - {hellgateGroup.Guid}");
                return hellgateGroup;
            }
        }

        public static Hellgate GetHellgate(uint instance)
        {
            if (ActiveHellgates.TryGetValue(instance, out var hellgate))
                return hellgate;

            return null;
        }


        public static bool PositionIsHellgate(Position pos)
        {
            if (pos == null) return false;

                return pos.IsEphemeralRealm && GetHellgate(pos.Instance) != null;
        }

        public static void Tick(double currentUnixTime)
        {
            if (NextHeartbeatTime > currentUnixTime)
                return;

            if (CurrentHellgateGroup.TimeRemaining <= 0)
                CreateHellgateGroup();

            var timeRemaining = TimeSpan.FromMinutes(CurrentHellgateGroup.TimeRemaining);
            log.Info($"Current HellgateGroup [{CurrentHellgateGroup.Guid}] - [TimeRemaining] = {timeRemaining}");
            log.Info($"Current Active Hellgate Count [{ActiveHellgates.Count}]");
            log.Info($"Current Hellgate Group Count [{HellgateGroups.Count}]");

            var hellgateGroup = HellgateGroups.Peek();

            while(hellgateGroup != null && hellgateGroup.TimeRemaining <= 0)
            {
                CleanupHellgateGroup(HellgateGroups.Dequeue());

                hellgateGroup = HellgateGroups.Count > 0 ? HellgateGroups.Peek() : null;
            }

            TickHellgatePlayers();

            NextHeartbeatTime = currentUnixTime + HeartbeatInterval;
        }

        private static void TickHellgatePlayers()
        {
            foreach (var hellgate in ActiveHellgates.Values)
                foreach(var player in hellgate.Players)
                {
                    if (player != null)
                    {
                        player.Hellgate_Tick(hellgate);
                    }
                }
        }

        public static void RemovePlayerFromHellgate(Player player, uint instance = 0)
        {
            lock (hellgateLock)
            {
                var iid = instance > 0 ? instance : player.Location.Instance;

                if (ActiveHellgates.TryGetValue(iid, out Hellgate hellgate))
                {
                    hellgate.RemovePlayer(player);
                    player.ExitInstance();
                    log.Info($"Removed {player.Name} from hellgate - {hellgate.Instance} ");
                    return;
                }
            }
        }

        private static void CleanupHellgateGroup(HellgateGroup hellgateGroup)
        {
            log.Info($"CleanupHellgateGroup - {hellgateGroup.Guid}");

            foreach (var instance in hellgateGroup.GetAllHellgates())
            {
                if(ActiveHellgates.TryGetValue(instance, out Hellgate hellgate))
                {
                    foreach (var player in hellgate.Players)
                    {
                        if (player != null)
                            RemovePlayerFromHellgate(player, instance);
                    }

                    ActiveHellgates.TryRemove(hellgate.Instance, out _);
                    hellgate.Destroy();
                    var actionChain = new ActionChain();
                    var lb = LandblockManager.GetLandblockUnsafe(hellgate.Landblock.DropLocation.LandblockId, instance);
                    actionChain.AddAction(WorldManager.ActionQueue, () =>
                    {
                        if (lb != null)
                            LandblockManager.AddToDestructionQueue(lb);
                    });
                    actionChain.AddDelaySeconds(1);
                    actionChain.EnqueueChain();
                }
            }

            hellgateGroup.Destroy();
        }

        public static Hellgate CreateHellgate(Player leader, List<Realm> appliedRulesets)
        {
            if (!CreateHellgateValidator(leader))
                return null;

            lock(hellgateLock)
            {

                if (CurrentHellgateGroup.TimeRemaining <= 0 || CurrentHellgateGroup.HasReachedCapacity)
                    CreateHellgateGroup();

                var allowedPlayers = leader.Fellowship.GetFellowshipMembers().Values.ToHashSet();
                var hellgate = CreateHellgate(leader, allowedPlayers, appliedRulesets, CurrentHellgateGroup);
                return hellgate;
            }
        }

        private static Hellgate CreateHellgate(Player leader, HashSet<Player> allowedPlayers, List<Realm> appliedRulesets, HellgateGroup hellgateGroup)
        {
            var ephemeralRealm = RealmManager.GetNewEphemeralLandblock(hellgateGroup.HellgateLandblock.DropLocation.LandblockId, leader, appliedRulesets, allowedPlayers);
            var instance = ephemeralRealm.Instance;
            var expiration = hellgateGroup.HellgateGroupExpiration;
            var groupGuid = hellgateGroup.Guid.Full;
            var hellgate = new Hellgate(hellgateGroup.HellgateLandblock, allowedPlayers, new Position(leader.Location), expiration, groupGuid, instance);

            hellgateGroup.AddHellgate(hellgate.Instance);

            ActiveHellgates.TryAdd(instance, hellgate);

            log.Info($"Creating Hellgate for {leader.Name} - {instance}");
            return hellgate;
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
