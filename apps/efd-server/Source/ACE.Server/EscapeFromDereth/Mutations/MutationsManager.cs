using ACE.Common;
using ACE.Database;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Entity.Models;
using ACE.Server.EscapeFromDereth.Hellgates;
using ACE.Server.EscapeFromDereth.Hellgates.Entity;
using ACE.Server.EscapeFromDereth.Towns;
using ACE.Server.EscapeFromDereth.Towns.Entity;
using ACE.Server.Factories;
using ACE.Server.Managers;
using ACE.Server.Realms;
using ACE.Server.WorldObjects;
using log4net;
using System.Collections.Generic;
using System.Linq;

namespace ACE.Server.EscapeFromDereth.Mutations
{
    public class MutationsManager

    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public static WorldObject ProcessWorldObject(WorldObject wo, AppliedRuleset ruleset)
        {
            var hasCustomContent = wo.Weenie.GetProperty(PropertyBool.IsCustomContent) ?? false;

            if (hasCustomContent)
                return wo;

            switch (ruleset.Realm.Id)
            {
                case 6:
                    return ProcessHomeRealmObject(wo, ruleset);
                case 1016:
                    return ProcessHellgateObject(wo, ruleset);
                case 1017:
                    return ProcessTownMeetingHallObject(wo, ruleset);
                case 0x7FFF:
                    return ProcessHideoutObject(wo, ruleset);
            }

            return wo;
        }

        private static WorldObject ProcessTownMeetingHallObject(WorldObject wo, AppliedRuleset ruleset)
        {
            switch (wo.WeenieType)
            {
                case WeenieType.Door:
                    wo.Destroy();
                    return null;
                case WeenieType.Portal:
                    wo.Name = "Meeting Hall Exit Portal";
                    return wo;
            }

            return wo;
        }

        private static WorldObject ProcessHideoutObject(WorldObject wo, AppliedRuleset ruleset)
        {
            if (wo.WeenieClassId == 80007)
                return wo;

            switch (wo.WeenieType)
            {
                case WeenieType.Storage:
                    return CreateHideoutStorage(wo);
            }

            return null;
        }

        private static WorldObject ProcessHomeRealmObject(WorldObject wo, AppliedRuleset ruleset)
        {
            switch (wo.WeenieType)
            {
                case WeenieType.Creature:
                    return ProcessHomeRealmCreature(wo as Creature, ruleset);
                case WeenieType.Portal:
                    return ProcessHomeRealmPortal(wo as Portal, ruleset);
                case WeenieType.Storage:
                    return ProcessHomeRealmStorage(wo, ruleset);
                case WeenieType.Door:
                    wo.Destroy();
                    return null;
                case WeenieType.SlumLord: // disable housing in home realm
                    wo.Destroy();
                    return null;
            }

            return wo;
        }

        private static WorldObject ProcessHomeRealmStorage(WorldObject wo, AppliedRuleset ruleset)
        {
            if (TownManager.GetTownDistance(wo.Location) > 300)
                return wo;

            var town = TownManager.GetClosestTownFromPosition(wo.Location);
            var storage = WorldObjectFactory.CreateNewWorldObject(600005);
            storage.Location = new Position(wo.Location);
            wo.Destroy();
            var townStorage = GetPersistentStorage(storage.Weenie, storage.Location);
            town.SetTownStorage(townStorage);
            return townStorage;
        }



        private static WorldObject ProcessHomeRealmPortal(Portal portal, AppliedRuleset ruleset)
        {
            var location = TownManager.GetTownDistance(portal.Location);
            // town network portals only exist in whitelisted towns
            if (portal.Name.Contains("Town Network") && location > 600)
            {
                portal.Destroy();
                return null;
            }

            if (portal.Name.Contains("Meeting Hall") && location > 600)
            {
                portal.Destroy();
                return null;
            } else
            {
                portal.PortalRestrictions |= PortalBitmask.NoNPK; // meeting hall should never have npk
                portal.PortalRestrictions |= PortalBitmask.NoSummon;
                portal.PortalRestrictions |= PortalBitmask.NoRecall;
            }


            return portal;
        }

        private static WorldObject ProcessHomeRealmCreature(Creature creature, AppliedRuleset ruleset)
        {
            var homeRealmCreature = CreatureHomeRealmMutate(creature);
            CreatureRealmMutate(homeRealmCreature, ruleset);

            return homeRealmCreature;
        }

        private static WorldObject ProcessHellgateObject(WorldObject wo, AppliedRuleset ruleset)
        {
            switch (wo.WeenieType)
            {
                case WeenieType.Door:
                    wo.Destroy();
                    return null;
                case WeenieType.Portal:
                    wo.Destroy();
                    return null;
                case WeenieType.Creature:
                    return ProcessHellgateCreature(wo as Creature, ruleset);
                case WeenieType.Generic:
                    return ProcessHellgateGenerator(wo as GenericObject, ruleset);
            }

            return wo;
        }

        private class DistanceComparer : IComparer<WorldObject>
        {
            private Position Location;
            public DistanceComparer(Position location)
            {
                Location = location;
            }   
            public int Compare(WorldObject x, WorldObject y)
            {
                return (int)(x.Location.DistanceTo(Location) - y.Location.DistanceTo(Location));
            }
        }

        public static WorldObject CreateHellgateBoss(Hellgate hellgate)
        {
            var lb = LandblockManager.GetLandblockUnsafe(hellgate.DropPosition.LandblockId, hellgate.Instance);

            if (lb == null)
                return null;

            var worldObjects = lb.GetAllWorldObjectsForDiagnostics();

            var player = worldObjects.Where(wo => wo is Player).FirstOrDefault();

            if (player == null)
                return null;

            var wo = worldObjects
                .Where(wo => wo is Creature && wo is not Player && !wo.IsGenerator)
                .OrderBy(creature => creature, new DistanceComparer(player.Location))
                .FirstOrDefault();

            if (wo != null)
            {
                var boss = WorldObjectFactory.CreateNewWorldObject(wo.WeenieClassId);
                boss.Location = new Position(wo.Location);
                boss.Lifespan = int.MaxValue;
                MutateHellgateBoss(boss, hellgate.Tier);
                wo.Destroy();
                return boss;
            }

            return wo;
        }

        public static WorldObject CreateHellgateSurfacePortal(Hellgate hellgate, Position location = null)
        {
            var surfacePortal = location != null ? WorldObjectFactory.CreateNewWorldObject(600004) : WorldObjectFactory.CreateNewWorldObject(600006);

            if (surfacePortal != null)
            {
                surfacePortal.Location = new Position(location ?? hellgate.ExitPosition);
                surfacePortal.Location.Instance = hellgate.Instance;
                surfacePortal.Lifespan = int.MaxValue;
            }

            return surfacePortal;
        }

        private static WorldObject ProcessHellgateGenerator(GenericObject genericObject, AppliedRuleset ruleset)
        {
            var creatureRespawnDuration = ruleset.GetProperty(RealmPropertyFloat.CreatureRespawnDuration);
            var creatureSpawnRateMultiplier = ruleset.GetProperty(RealmPropertyFloat.CreatureSpawnRateMultiplier);

            if (creatureRespawnDuration > 0)
            {
                genericObject.RegenerationInterval = (int)((float)creatureRespawnDuration * creatureSpawnRateMultiplier);

                genericObject.ReinitializeHeartbeats();

                if (genericObject.Biota.PropertiesGenerator != null)
                {
                    // While this may be ugly, it's done for performance reasons.
                    // Common weenie properties are not cloned into the bota on creation. Instead, the biota references simply point to the weenie collections.
                    // The problem here is that we want to update one of those common collection properties. If the biota is referencing the weenie collection,
                    // then we'll end up updating the global weenie (from the cache), instead of just this specific biota.
                    if (genericObject.Biota.PropertiesGenerator == genericObject.Weenie.PropertiesGenerator)
                    {
                        genericObject.Biota.PropertiesGenerator = new List<ACE.Entity.Models.PropertiesGenerator>(genericObject.Weenie.PropertiesGenerator.Count);

                        foreach (var record in genericObject.Weenie.PropertiesGenerator)
                            genericObject.Biota.PropertiesGenerator.Add(record.Clone());
                    }
                }
            }

            return genericObject;
        }

        private static WorldObject ProcessHellgateCreature(Creature creature, AppliedRuleset ruleset)
        {
            var hellgate = HellgateManager.GetHellgate(creature.Location.Instance);

            if (hellgate != null)
            {
                var forgottenCreature = CreateForgottenMonster(hellgate.ClosestTown, hellgate.Tier);
                forgottenCreature.Location = new Position(creature.Location);
                MutateForgottenCreatureName(forgottenCreature);
                CreatureRealmMutate(forgottenCreature, ruleset);
                //MutateDeathTreasureTypeByTier(forgottenCreature, hellgate.Tier);
                creature.Destroy();
                return forgottenCreature;
            }

            return null;
        }

        private static WorldObject CreateHideoutStorage(WorldObject wo)
        {
            var storage = WorldObjectFactory.CreateNewWorldObject(600000);
            storage.Location = new Position(wo.Location);
            wo.Destroy();
            return GetPersistentStorage(storage.Weenie, storage.Location);
        }

        private static void CreatureRealmMutate(Creature creature, AppliedRuleset ruleset)
        {
            if (creature.WeenieType == WeenieType.Creature)
            {
                if (creature.Biota?.PropertiesAttribute2nd?.ContainsKey(PropertyAttribute2nd.MaxHealth) == true)
                {
                    creature.Biota.PropertiesAttribute2nd[PropertyAttribute2nd.MaxHealth].InitLevel =
                        (uint)(creature.Biota.PropertiesAttribute2nd[PropertyAttribute2nd.MaxHealth].InitLevel *
                        ruleset.GetProperty(RealmPropertyFloat.CreatureSpawnHPMultiplier));
                }

                if (creature.Biota?.PropertiesAttribute?.ContainsKey(PropertyAttribute.Strength) == true)
                {
                    creature.Biota.PropertiesAttribute[PropertyAttribute.Strength].InitLevel =
                        ClampStat(
                            (int)creature.Biota.PropertiesAttribute[PropertyAttribute.Strength].InitLevel,
                            ruleset.GetProperty(RealmPropertyInt.CreatureStrengthAdded),
                            ruleset.GetProperty(RealmPropertyFloat.CreatureStrengthMultiplier)
                        );
                }

                if (creature.Biota?.PropertiesAttribute?.ContainsKey(PropertyAttribute.Endurance) == true)
                {
                    creature.Biota.PropertiesAttribute[PropertyAttribute.Endurance].InitLevel =
                    ClampStat(
                        (int)creature.Biota.PropertiesAttribute[PropertyAttribute.Endurance].InitLevel,
                        ruleset.GetProperty(RealmPropertyInt.CreatureEnduranceAdded),
                        ruleset.GetProperty(RealmPropertyFloat.CreatureEnduranceMultiplier)
                    );
                }

                if (creature.Biota?.PropertiesAttribute?.ContainsKey(PropertyAttribute.Coordination) == true)
                {
                    creature.Biota.PropertiesAttribute[PropertyAttribute.Coordination].InitLevel =
                    ClampStat(
                        (int)creature.Biota.PropertiesAttribute[PropertyAttribute.Coordination].InitLevel,
                        ruleset.GetProperty(RealmPropertyInt.CreatureCoordinationAdded),
                        ruleset.GetProperty(RealmPropertyFloat.CreatureCoordinationMultiplier)
                    );
                }

                if (creature.Biota?.PropertiesAttribute?.ContainsKey(PropertyAttribute.Quickness) == true)
                {
                    creature.Biota.PropertiesAttribute[PropertyAttribute.Quickness].InitLevel =
                    ClampStat(
                        (int)creature.Biota.PropertiesAttribute[PropertyAttribute.Quickness].InitLevel,
                        ruleset.GetProperty(RealmPropertyInt.CreatureQuicknessAdded),
                        ruleset.GetProperty(RealmPropertyFloat.CreatureQuicknessMultiplier)
                    );
                }

                if (creature.Biota?.PropertiesAttribute?.ContainsKey(PropertyAttribute.Focus) == true)
                {
                    creature.Biota.PropertiesAttribute[PropertyAttribute.Focus].InitLevel =
                    ClampStat(
                        (int)creature.Biota.PropertiesAttribute[PropertyAttribute.Focus].InitLevel,
                        ruleset.GetProperty(RealmPropertyInt.CreatureFocusAdded),
                        ruleset.GetProperty(RealmPropertyFloat.CreatureFocusMultiplier)
                    );
                }

                if (creature.Biota?.PropertiesAttribute?.ContainsKey(PropertyAttribute.Self) == true)
                {
                    creature.Biota.PropertiesAttribute[PropertyAttribute.Self].InitLevel =
                    ClampStat(
                        (int)creature.Biota.PropertiesAttribute[PropertyAttribute.Self].InitLevel,
                        ruleset.GetProperty(RealmPropertyInt.CreatureSelfAdded),
                        ruleset.GetProperty(RealmPropertyFloat.CreatureSelfMultiplier)
                    );
                }
            }
        }
        private static uint ClampStat(int initialValue, int amountToAdd, double multiplier, int maxValue = 10000000)
        {
            var value = (int)(initialValue * multiplier + amountToAdd);
            if (value < 1) value = 1;
            if (value > maxValue)
                value = maxValue;
            return (uint)value;
        }

        private static Creature CreateForgottenMonster(Town town, int tier)
        {
            var weenieId = town.GetWeenieIdByTier((uint)tier);
            return (Creature)WorldObjectFactory.CreateNewWorldObject(weenieId);
        }

        private static Creature CreatureHomeRealmMutate(Creature creature)
        {
            if (!(creature is Player) && creature.IsMonster)
            {
                if (creature.Location.Indoors)
                    return creature;

                if (creature.Level < 80 || ThreadSafeRandom.Next(0, 100) < 25) // 25% chance of forgotten mob
                {
                    var tier = TownManager.GetMonsterTierByDistance(creature.Location);
                    var town = TownManager.GetClosestTownFromPosition(creature.Location);
                    var forgottenCreature = CreateForgottenMonster(town, tier);
                    forgottenCreature.Location = new Position(creature.Location);

                    if (ThreadSafeRandom.Next(0, 100) < 8) // 8% chance of mutating a forgotten monster to a Gatekeeper
                        MutateGatekeeper(forgottenCreature);
                    else
                        MutateForgottenCreatureName(forgottenCreature);

                    creature.Destroy(); // destroy original creature since we are replacing with a custom monster
                    return forgottenCreature;
                }
            }

            return creature;
        }


        private static void MutateForgottenCreatureName(Creature creature)
        {
            if (!creature.Name.Contains("Forgotten"))
                creature.Name = $"Forgotten {creature.Name}";
        }

        public static void MutateDeathTreasureTypeByTier(Creature creature, int tier)
        {
            creature.DeathTreasureType = 453;

            if (tier == 3)
                creature.DeathTreasureType = 464;

            if (tier == 4)
                creature.DeathTreasureType = 1000;

            if (tier == 5)
                creature.DeathTreasureType = 1005;
        }

        private static void MutateGatekeeper(WorldObject wo)
        {
            var tier = TownManager.GetMonsterTierByDistance(wo.Location);

            if (wo.Biota?.PropertiesAttribute2nd?.ContainsKey(PropertyAttribute2nd.MaxHealth) == true)
            {
                var level = (uint)(5000 * tier);
                wo.Biota.PropertiesAttribute2nd[PropertyAttribute2nd.MaxHealth].InitLevel = level;
                wo.Biota.PropertiesAttribute2nd[PropertyAttribute2nd.MaxHealth].CurrentLevel = level;
            }

            wo.SpawnHellgateOnDeath = true;
            wo.SetProperty(PropertyFloat.DefaultScale, 3); // scale the gatekeeper to have 3x size
            wo.Name = $"Forgotten Gatekeeper";
            wo.SaveBiotaToDatabase();
        }

        private static Storage GetPersistentStorage(Weenie weenie, Position location)
        {
            var biota = DatabaseManager.Shard.BaseDatabase.GetPersistentStorage(location);

            if (biota != null)
                return (Storage)WorldObjectFactory.CreateWorldObject(biota);
            else
            {
                // stupid hack to persist a storage object without recycling, player Guids are not dynamic
                var storageGuid = GuidManager.NewPlayerGuid();
                var storage = new Storage(weenie, storageGuid);
                storage.Location = new Position(location);
                storage.SaveBiotaToDatabase();
                return storage;
            }
        }

        internal static void MutateHellgateBoss(WorldObject wo, int tier)
        {
            if (wo.Biota?.PropertiesAttribute2nd?.ContainsKey(PropertyAttribute2nd.MaxHealth) == true)
            {
                var level = (uint)(5000 * tier);
                wo.Biota.PropertiesAttribute2nd[PropertyAttribute2nd.MaxHealth].InitLevel = level;
                wo.Biota.PropertiesAttribute2nd[PropertyAttribute2nd.MaxHealth].CurrentLevel = level;
            }

            wo.SpawnHellgateSurfaceOnDeath = true;
            wo.SetProperty(PropertyFloat.DefaultScale, 1.5); // scale the boss to have 1.5x size
            wo.Name = $"Hellgate Boss";

            wo.SaveBiotaToDatabase();
        }
    }
}
