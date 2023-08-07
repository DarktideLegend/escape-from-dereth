using ACE.Common;
using ACE.Database;
using ACE.Entity;
using ACE.Entity.Models;
using ACE.Server.Entity.Actions;
using ACE.Server.EscapeFromDereth.Hellgates.Data;
using ACE.Server.EscapeFromDereth.Hellgates.Entity;
using ACE.Server.EscapeFromDereth.Mutations;
using ACE.Server.EscapeFromDereth.Towns;
using ACE.Server.Factories;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using log4net;
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
        private static readonly Dictionary<string, HellgateLandblock> HellgateLandblocks = new Dictionary<string, HellgateLandblock>();
        private static double NextHeartbeatTime;
        private static readonly double HeartbeatInterval = 5.0f;
        private static readonly List<string> HellgateLandblockKeys =  new List<string>();
        private static readonly Dictionary<uint, Hellgate> ActiveHellgates = new Dictionary<uint, Hellgate>();
        private static readonly SortedDictionary<double, HellgateGroup> HellgateGroups = new SortedDictionary<double, HellgateGroup>();
        private static readonly HellgateRepository HellgateRepo = new HellgateRepository();
        public static HellgateGroup CurrentHellgateGroup { get; private set; }
        public static bool IsCleaningupHellgateGroup { get; private set; }

        public static void Initialize()
        {
            LoadHellgateLandblocks();
            PurgeForbiddenMonsterBiotas();
            InitializeHeartbeat();
            CreateHellgateGroup();
        }

        private static void LoadHellgateLandblocks()
        {
            foreach (var landblock in HellgateRepo.GetAllHellgates())
            {
                HellgateLandblocks.TryAdd(landblock.Name, landblock);
                HellgateLandblockKeys.Add(landblock.Name);
            }
        }

        private static void PurgeForbiddenMonsterBiotas()
        {
            // destroy all forbidden monster mobs when server starts
            foreach (var wcid in Enumerable.Range(601001, 5))
            {
                var forgottenMobs = DatabaseManager.Shard.BaseDatabase.GetBiotasByWcid((uint)wcid).Select(biota => biota.Id);
                DatabaseManager.Shard.BaseDatabase.RemoveBiotasInParallel(forgottenMobs);
            }
        }

        private static void InitializeHeartbeat()
        {
            var currentUnixTime = Time.GetUnixTime();
            NextHeartbeatTime = currentUnixTime + HeartbeatInterval;
        }

        private static HellgateGroup CreateHellgateGroup(int timespan = 0, int maxHellgates = 3, int openChance = 50)
        {
            lock (hellgateLock)
            {
                var index = ThreadSafeRandom.Next(0, HellgateLandblocks.Count - 1);
                var landblockName = HellgateLandblockKeys[index];
                var landblock = HellgateLandblocks[landblockName];

                if (timespan == 0)
                    timespan = 60; // by default, hellgates are open for an hour

                var hellgateGroup = new HellgateGroup(timespan, maxHellgates, GuidManager.NewDynamicGuid());

                if (ThreadSafeRandom.Next(1, 100) <= openChance)
                    hellgateGroup.IsOpen = true;

                CurrentHellgateGroup = hellgateGroup;
                HellgateGroups.Add(hellgateGroup.HellgateGroupExpiration, hellgateGroup);

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

            var hellgateGroup = HellgateGroups.FirstOrDefault().Value;

            while (hellgateGroup != null && hellgateGroup.ShouldDestroy)
            {
                HellgateGroups.Remove(hellgateGroup.HellgateGroupExpiration);
                CleanupHellgateGroup(hellgateGroup);

                hellgateGroup = HellgateGroups.FirstOrDefault().Value;
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

                if (hellgate.ShouldSpawnBoss)
                    SpawnHellgateBoss(hellgate);

                if (hellgate.ShouldSpawnSurface)
                    SpawnHellgateSurfacePortal(hellgate);


            }
        }

        public static void SpawnHellgateSurfacePortal(Hellgate hellgate)
        {
            var surfacePortal = MutationsManager.CreateHellgateSurfacePortal(hellgate);

            if (surfacePortal != null && surfacePortal.EnterWorld() && surfacePortal.PhysicsObj != null)
                hellgate.SpawnSurface();
        }

        private static void SpawnHellgateBoss(Hellgate hellgate)
        {
            var boss = MutationsManager.CreateHellgateBoss(hellgate);

            if (boss != null && boss.EnterWorld() && boss.PhysicsObj != null)
                hellgate.SpawnBoss();

        }

        public static void AddPlayerToHellgate(Player player, uint instance)
        {
            if (ActiveHellgates.TryGetValue(instance, out Hellgate hellgate))
            {
                hellgate.AddPlayer(player);

                log.Info($"Added {player.Name} to hellgate - {hellgate.Instance} ");
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

        private static void CleanupHellgateGroup(HellgateGroup hellgateGroup, bool killPlayers = true)
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
                        {
                            if (killPlayers)
                                player.HandleActionDie();
                            else
                                player.ExitInstance();
                        }
                    }
                    var actionChain = new ActionChain();
                    actionChain.AddDelaySeconds(60); // give enough time for hellgate to be destroyed
                    actionChain.AddAction(WorldManager.ActionQueue, () =>
                    {
                        var lb = LandblockManager.GetLandblockUnsafe(hellgate.DropPosition.LandblockId, hellgate.Instance);
                        if (lb != null)
                            LandblockManager.AddToDestructionQueue(lb);
                        hellgate.Destroy();
                    });
                    actionChain.EnqueueChain();
                }
            }

            hellgateGroup.Destroy();
            GuidManager.RecycleDynamicGuid(hellgateGroup.Guid);
            IsCleaningupHellgateGroup = false;
        }



        public static Hellgate CreateHellgate(Player leader, List<Realm> appliedRulesets)
        {
            lock (hellgateLock)
            {
                if (CurrentHellgateGroup.HasReachedCapacity || CurrentHellgateGroup.IsClosed)
                    CreateHellgateGroup();

                var hellgate = CreateHellgate(leader, appliedRulesets, CurrentHellgateGroup);
                return hellgate;
            }
        }

        private static Hellgate CreateHellgate(Player leader, List<Realm> appliedRulesets, HellgateGroup hellgateGroup)
        {
            var index = ThreadSafeRandom.Next(0, HellgateLandblocks.Count - 1);
            var landblockName = HellgateLandblockKeys[index];
            var landblock = HellgateLandblocks[landblockName];
            var ephemeralRealm = RealmManager.GetNewEphemeralLandblock(landblock.DropLocation.LandblockId, leader, appliedRulesets, true);
            var instance = ephemeralRealm.Instance;
            var expiration = hellgateGroup.HellgateGroupExpiration;
            var bossExpiration = hellgateGroup.HellgateBossSpawnExpiration;
            var isOpen = hellgateGroup.IsOpen;
            var groupGuid = hellgateGroup.Guid.Full;

            var exitPosition = new Position(landblock.ExitLocation);
            exitPosition.Instance = instance;

            var dropPosition = new Position(landblock.DropLocation);
            dropPosition.Instance = instance;

            var tier = TownManager.GetMonsterTierByDistance(leader.Location);

            var hellgate = new Hellgate(
                landblock.Name,
                ephemeralRealm.RealmRuleset,
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

        public static bool CreateHellgatePlayerValidator(Player leader)
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

            if (ServerManager.ShutdownInitiated)
            {
                leader.SendMessage($"The server is currently shutting down, players may not enter hellgates at this time.");
                return false;
            }

            return true;
        }

        public static bool CreateHellgateFellowshipValidator(Player leader, List<Player> fellowship)
        {
            if (fellowship.Count == 1)
                return true;

            if (fellowship.Count > 3)
            {
                leader.SendMessage($"Fellowships can have no more than 3 players to enter a hellgate.");
                return false;
            }

            foreach (var member in fellowship)
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

        public static void RemoveAllPlayersFromHellgates()
        {
            // remove all player from hellgate instances
            foreach (var player in PlayerManager.GetAllOnline())
                if (player.IsInHellgate)
                    player.ExitInstance();
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
