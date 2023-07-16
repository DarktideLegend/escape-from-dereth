using ACE.Common;
using ACE.Entity;
using ACE.Entity.Models;
using ACE.Server.Entity;
using ACE.Server.Entity.Actions;
using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.EscapeFromDereth.Hellgates.Entity;
using ACE.Server.EscapeFromDereth.Towns;
using ACE.Server.Factories;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using log4net;
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
            { 0x02F0, new HellgateLandblock(EFDHelpers.slocToPosition("0x02F00152 [140.000000 -130.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 393216"),
                EFDHelpers.slocToPosition("0x02F0015F [160.109528 -126.319016 0.005000] -0.019124 0.000000 0.000000 -0.999817 393216"),
                EFDHelpers.slocToPosition("0x02F001C5 [251.062134 -133.491089 6.005000] 0.999681 0.000000 0.000000 0.025264 393216"),
                "Hills Citadel") },
            { 0x5875, new HellgateLandblock(EFDHelpers.slocToPosition("0x58750294 [180.000000 -109.111000 6.505000] 1.000000 0.000000 0.000000 0.000000 393216"),
                EFDHelpers.slocToPosition("0x5875018B [179.585602 -202.543991 0.005000] 0.024996 0.000000 0.000000 0.999688 393216"),
                EFDHelpers.slocToPosition("0x5875017D [179.467651 -18.145061 0.005000] 0.999981 0.000000 0.000000 0.006157 393216"),
                "Rynthid Genesis") },
            { 0x03A3, new HellgateLandblock(EFDHelpers.slocToPosition("0x03A30201 [70.000000 -590.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 393216"),
                EFDHelpers.slocToPosition("0x03A30204 [70.262520 -622.485596 0.005000] 0.999961 0.000000 0.000000 0.008779 393216"),
                EFDHelpers.slocToPosition("0x03A30173 [70.270325 -355.874573 -5.995000] -0.006318 0.000000 0.000000 0.999980 393216"),
                "Northern Infiltrator Keep") },
            { 0x5D49, new HellgateLandblock(EFDHelpers.slocToPosition("0x5D49014D [90.000000 0.000000 0.010000] 0.000000 0.000000 0.000000 -1.000000 393216"),
                EFDHelpers.slocToPosition("0x5D490129 [31.027369 -36.372517 0.005000] -0.727585 0.000000 0.000000 0.686018 393216"),
                EFDHelpers.slocToPosition("0x5D4902BA [200.464050 -355.261353 24.004999] -0.003705 0.000000 0.000000 -0.999993 393216"),
                "Olthoi Arcade South") },
            { 0x8B03, new HellgateLandblock(EFDHelpers.slocToPosition("0x8B0303FF [110.026001 -150.014008 -17.995001] 1.000000 0.000000 0.000000 0.000000 393216"),
                EFDHelpers.slocToPosition("0x8B030400 [109.954117 -158.560104 -17.995001] -0.004204 0.000000 0.000000 -0.999991 393216"),
                EFDHelpers.slocToPosition("0x8B030309 [100.216652 -91.151962 -47.994999] -0.000560 0.000000 0.000000 -1.000000 393216"),
                "Apostate Nexus") },
            { 0x007E, new HellgateLandblock(EFDHelpers.slocToPosition("0x007E0353 [10.000000 -560.000000 0.010000] 1.000000 0.000000 0.000000 0.000000 393216"),
                EFDHelpers.slocToPosition("0x007E0357 [9.924426 -572.705566 0.005000] 0.999996 0.000000 0.000000 0.002926 393216"),
                EFDHelpers.slocToPosition("0x007E02B1 [109.649208 -484.015228 -11.995001] -0.999905 0.000000 0.000000 0.013764 393216"),
                "Black Spear Temple Upper") },
            { 0x00DC, new HellgateLandblock(EFDHelpers.slocToPosition("0x00DC016C [0.000000 -55.017300 -5.990000] 1.000000 0.000000 0.000000 0.000000 393216"),
                EFDHelpers.slocToPosition("0x00DC0104 [26.765629 -59.896336 -11.995001] -0.743682 0.000000 0.000000 -0.668534 393216"),
                EFDHelpers.slocToPosition("0x00DC015E [127.882149 -88.777344 -11.995001] 0.671681 0.000000 0.000000 -0.740841 393216"),
                "Moarsmen Priory") }
        };

        private static double NextHeartbeatTime;

        private static readonly double HeartbeatInterval = 5.0f;

        private static readonly ImmutableList<ushort> HellgateLandblockKeys = HellgateLandblocks.Keys.ToImmutableList();

        private static readonly ConcurrentDictionary<uint, Hellgate> ActiveHellgates = new ConcurrentDictionary<uint, Hellgate>();

        private static readonly Queue<HellgateGroup> HellgateGroups = new Queue<HellgateGroup>();

        public static HellgateGroup CurrentHellgateGroup { get; private set; }
        public static bool IsCleaningupHellgateGroup { get; private set; }

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

        private static HellgateGroup CreateHellgateGroup(int timespan = 0, int maxHellgates = 3, int openChance = 25)
        {
            lock (hellgateLock)
            {
                var index = ThreadSafeRandom.Next(0, HellgateLandblocks.Count - 1);
                var landblockShort = HellgateLandblockKeys[index];
                var landblock = HellgateLandblocks[landblockShort];

                if (timespan == 0)
                    timespan = 60; // by default, hellgates are open for an hour

                var hellgateGroup = new HellgateGroup(landblock, timespan, maxHellgates, GuidManager.NewDynamicGuid());

                if (ThreadSafeRandom.Next(1, 100) <= 25)
                    hellgateGroup.IsOpen = true;

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

            if (IsCleaningupHellgateGroup)
                return;

            if (HellgateGroups.Count == 0)
                return;

            var hellgateGroup = HellgateGroups.Peek();

            while (hellgateGroup != null && hellgateGroup.ShouldDestroy)
            {
                CleanupHellgateGroup(HellgateGroups.Dequeue());

                hellgateGroup = HellgateGroups.Count > 0 ? HellgateGroups.Peek() : null;
            }

            TickHellgates();

            NextHeartbeatTime = currentUnixTime + HeartbeatInterval;
        }

        private static void TickHellgates()
        {
            foreach (var hellgate in ActiveHellgates.Values)
            {
                foreach (var player in hellgate.Players)
                {
                    if (player != null)
                    {
                        player.Hellgate_Tick(hellgate);
                    }
                }

                if (hellgate.BossSpawned || !hellgate.ShouldSpawnBoss)
                    continue;

                SpawnHellgateBoss(hellgate);

            }
        }

        private static void SpawnHellgateBoss(Hellgate hellgate)
        {
            hellgate.BossSpawned = true;
            var lifespan = (int)hellgate.TimeRemaining;
            var boss = WorldObjectFactory.CreateNewWorldObject(4000226); // Darkbeat temporarily 
            if (boss != null)
            {
               boss.Location = hellgate.BossPosition;
               boss.Lifespan = lifespan;
               boss?.EnterWorld();
            }

            var exitPortal = WorldObjectFactory.CreateNewWorldObject(600004);
            if (exitPortal != null)
            {
                exitPortal.Location = hellgate.ExitPosition;
                exitPortal.Lifespan = lifespan;
                exitPortal?.EnterWorld();
            } 
        }

        public static void AddPlayerToHellgate(Player player, uint instance)
        {
            if (ActiveHellgates.TryGetValue(instance, out Hellgate hellgate))
            {
                hellgate.AddPlayer(player);

                log.Info($"Added {player.Name} from hellgate - {hellgate.Instance} ");
                return;
            }
        }

        public static void RemovePlayerFromHellgate(Player player, uint instance)
        {
            if (ActiveHellgates.TryGetValue(instance, out Hellgate hellgate))
            {
                hellgate.RemovePlayer(player);

                log.Info($"Removed {player.Name} from hellgate - {hellgate.Instance} ");
                return;
            }
        }

        private static void CleanupHellgateGroup(HellgateGroup hellgateGroup)
        {
            IsCleaningupHellgateGroup = true;

            log.Info($"CleanupHellgateGroup - {hellgateGroup.Guid}");

            foreach (var instance in hellgateGroup.GetAllHellgates())
            {
                {
                    var hellgate = GetHellgate(instance);
                    if (hellgate == null)
                        continue;

                    foreach (var player in hellgate.Players)
                    {
                        if (player != null)
                            player.HandleActionDie();
                    }
                    var actionChain = new ActionChain();
                    actionChain.AddDelaySeconds(60); // give enough time for hellgate to be destroyed
                    actionChain.AddAction(WorldManager.ActionQueue, () =>
                    {
                        var lb = LandblockManager.GetLandblockUnsafe(hellgate.Landblock.DropLocation.LandblockId, hellgate.Instance);
                        if (lb != null)
                            LandblockManager.AddToDestructionQueue(lb);
                        hellgate.Destroy();
                    });
                    actionChain.EnqueueChain();
                }
            }

            hellgateGroup.Destroy();
            GuidManager.RecycleDynamicGuid(hellgateGroup.Guid);
            IsCleaningupHellgateGroup= false;
        }



        public static Hellgate CreateHellgate(Player leader, List<Realm> appliedRulesets)
        {
            if (!CreateHellgateValidator(leader))
                return null;

            lock (hellgateLock)
            {

                if (CurrentHellgateGroup.HasReachedCapacity || CurrentHellgateGroup.IsClosed)
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
            var bossExpiration = hellgateGroup.HellgateBossSpawnExpiration;
            var isOpen = hellgateGroup.IsOpen;
            var groupGuid = hellgateGroup.Guid.Full;

            var bossPosition = new Position(hellgateGroup.HellgateLandblock.BossLocation);
            bossPosition.Instance = instance;

            var exitPosition = new Position(hellgateGroup.HellgateLandblock.ExitLocation);
            exitPosition.Instance = instance;

            var dropPosition = new Position(hellgateGroup.HellgateLandblock.DropLocation);
            dropPosition.Instance = instance;

            var tier = TownManager.GetMonsterTierByDistance(leader.Location);

            var hellgate = new Hellgate(
                hellgateGroup.HellgateLandblock,
                allowedPlayers,
                ephemeralRealm.RealmRuleset,
                bossPosition,
                exitPosition,
                dropPosition,
                expiration,
                bossExpiration,
                groupGuid,
                isOpen,
                tier,
                instance); 

            hellgateGroup.AddHellgate(hellgate);

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
            var memberCount = fellowship.FellowshipMembers.Count;
            if (memberCount == 1)
                return true;

            if (memberCount > 3)
            {
                leader.SendMessage($"Fellowships can have no more than 3 players to enter a hellgate.");
                return false;
            }

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

        public static void HellgateExitTransition(Player player, Hellgate hellgate)
        {
            if (hellgate.Next == null)
            {
                player.ExitInstance();
            }
            else
            {
                WorldManager.ThreadSafeTeleport(player, hellgate.Next.DropPosition, true);
            }
        }
    }
}
