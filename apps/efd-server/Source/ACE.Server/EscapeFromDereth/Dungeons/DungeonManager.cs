using ACE.Common;
using ACE.Database;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Models;
using ACE.Server.Entity;
using ACE.Server.EscapeFromDereth.Dungeons.Entity;
using ACE.Server.EscapeFromDereth.Hellgates.Entity;
using ACE.Server.EscapeFromDereth.Mutations;
using ACE.Server.Factories;
using ACE.Server.Managers;
using ACE.Server.Realms;
using ACE.Server.WorldObjects;
using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Dungeons
{
    internal class DungeonManager
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private static double NextHeartbeatTime;

        private static readonly double HeartbeatInterval = 5.0f;

        private static readonly Dictionary<ulong, Dungeon> ActiveDungeons = new Dictionary<ulong, Dungeon>();

        private static readonly Dictionary<ulong, DungeonLandblock> DungeonLandblocks = new Dictionary<ulong, DungeonLandblock>();

        public static void Initialize()
        {
            InitializeHeartbeat();
        }

        private static void InitializeHeartbeat()
        {
            var currentUnixTime = Time.GetUnixTime();
            NextHeartbeatTime = currentUnixTime + HeartbeatInterval;
        }

        public static Dungeon GetDungeon(uint landblock)
        {
            if (ActiveDungeons.TryGetValue(landblock, out var dungeon))
                return dungeon;

            return null;
        }

        public static bool PositionIsDungeon(Position pos)
        {
            if (pos == null) return false;

            return pos.IsEphemeralRealm && GetDungeon(pos.LandblockShort) != null;
        }


        public static uint GetMonsterTierByLevel(uint level)
        {

            if (level <= 80)
                return 1;
            if (level <= 100)
                return 2;
            if (level <= 130)
                return 3;
            if (level <= 185)
                return 4;

            return 5;
        }


        public static Dungeon CreateDungeon(Player creator, Position drop, List<Realm> appliedRulesets)
        {
            var existingDungeon = GetDungeon(drop.LandblockShort);

            if (existingDungeon != null)
                return existingDungeon;

            var ephemeralRealm = RealmManager.GetNewEphemeralLandblock(drop.LandblockId, creator, appliedRulesets, true);
            var instance = ephemeralRealm.Instance;
            var isOpen = false;

            var dropPosition = new Position(drop);
            dropPosition.Instance = instance;

            var dungeonObjects = GetDungeonObjectsFromPosition(drop, ephemeralRealm.RealmRuleset);

            var generatorCreatureObjects = GetGeneratorCreaturesObjectsFromDungeon(dungeonObjects);

            var spawnedCreatures = dungeonObjects
                .Where(wo => wo is Creature creature && creature is not Player && !creature.IsGenerator && !creature.IsNPC);

            var creatures = generatorCreatureObjects.Concat(spawnedCreatures).Distinct().ToList();

            var averageLevel = creatures.Any() ? creatures.Average(wo => wo.Level) : 1;

            var averageCreatureType = creatures.Any() ? creatures
                .GroupBy(obj => obj.CreatureType)
                .OrderByDescending(group => group.Count())
                .Select(group => group.Key)
                .FirstOrDefault(CreatureType.Invalid) ?? CreatureType.Invalid : CreatureType.Invalid;

            var tier = GetMonsterTierByLevel((uint)averageLevel);

            var creatureWeenieIds = DatabaseManager.World.GetDungeonCreatureWeenieIds(averageCreatureType, tier);

            if (averageCreatureType == CreatureType.Invalid)
            {
                creatureWeenieIds = DatabaseManager.World.GetDungeonCreatureWeenieIds(CreatureType.Undead, tier, false);
            }
            else
            {
                var maxRetry = 107;
                var tries = 0;

                while ((tries < maxRetry) && creatureWeenieIds.Count <= 0)
                {
                    creatureWeenieIds = DatabaseManager.World.GetDungeonCreatureWeenieIds(averageCreatureType, tier, true);
                    tries++;
                }

                if (tries >= maxRetry)
                {
                    // default Undead 
                    creatureWeenieIds = DatabaseManager.World.GetDungeonCreatureWeenieIds(CreatureType.Undead, tier, false);
                }
            }


            var dungeon = new Dungeon(
                ephemeralRealm.RealmRuleset,
                dropPosition,
                isOpen,
                tier,
                creatureWeenieIds,
                instance);


            ActiveDungeons.TryAdd(drop.LandblockShort, dungeon);

            log.Info($"Creating Dungeon for {creator.Name} - {instance}");
            return dungeon;
        }

        private static List<WorldObject> GetGeneratorCreaturesObjectsFromDungeon(List<WorldObject> dungeonObjects)
        {
            return dungeonObjects
                .Where(wo => wo.IsGenerator)
                .SelectMany(wo => wo.Biota.PropertiesGenerator.Select(prop => prop.WeenieClassId))
                .Select(wcid => WorldObjectFactory.CreateNewWorldObject(wcid))
                .Where(wo => wo is Creature creature && creature is not Player && !creature.IsGenerator && !creature.IsNPC)
                .ToList();
        }

        public static void ResetDungeonBoss(Position location)
        {
            var dungeon = GetDungeon(location.LandblockShort);

            if (dungeon != null)
            {
                dungeon.ResetBoss();
            }
        }

        public static List<WorldObject> GetDungeonObjectsFromPosition(Position position, AppliedRuleset ruleset)
        {
            var Id = new LandblockId(position.LandblockId.Raw);

            var objects = DatabaseManager.World.GetCachedInstancesByLandblock(Id.Landblock, RealmManager.DefaultRealm.Realm.Id);
            return objects.Select(link => WorldObjectFactory.CreateNewWorldObject(link.WeenieClassId)).ToList();
        }

        public static void SpawnDungeonBoss(Dungeon dungeon)
        {
            var boss = MutationsManager.CreateDungeonBoss(dungeon.DropPosition, dungeon.Ruleset);

            if (boss != null)
            {
                boss.EnterWorld();
                if (boss.PhysicsObj != null)
                    dungeon.SpawnBoss();
            }
        }

        internal static void Tick(double currentUnixTime)
        {
            if (NextHeartbeatTime > currentUnixTime)
                return;

            foreach (var kvp in ActiveDungeons)
            {
                var dungeon = kvp.Value;

                if (dungeon.ShouldSpawnBoss)
                {
                    SpawnDungeonBoss(dungeon);
                }
            }

            NextHeartbeatTime = currentUnixTime + HeartbeatInterval;
        }
    }

}
