using ACE.Common;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Entity.Models;
using ACE.Server.EscapeFromDereth.Hellgates;
using ACE.Server.EscapeFromDereth.Hideouts;
using ACE.Server.EscapeFromDereth.Towns;
using ACE.Server.Factories;
using ACE.Server.Realms;
using ACE.Server.WorldObjects;

namespace ACE.Server.EscapeFromDereth
{
    public class WorldObjectProcessor
    {
        public static WorldObject ProcessWorldObject(WorldObject wo, AppliedRuleset ruleset)
        {
            var hasCustomContent = wo.Weenie.GetProperty(PropertyBool.IsCustomContent) ?? false;

            if (hasCustomContent)
                return wo;

            switch (ruleset.Realm.Id)
            {
                case 6:
                    return ProcessHomeRealm(wo, ruleset);
                case 1016:
                    return ProcessHellgateObject(wo, ruleset);
                case 0x7FFF:
                    return ProcessHideoutObject(wo, ruleset);
            }

            return wo;
        }

        private static WorldObject ProcessHideoutObject(WorldObject wo, AppliedRuleset ruleset)
        {
            switch (wo.WeenieType)
            {
                case WeenieType.Storage:
                    return CreateHideoutStorage(wo);
            }

            return null;
        }

        private static WorldObject ProcessHomeRealm(WorldObject wo, AppliedRuleset ruleset)
        {
            switch(wo.WeenieType)
            {
                case WeenieType.Creature:
                    return ProcessHomeRealmCreature(wo as Creature, ruleset);
                case WeenieType.Portal:
                    return ProcessHomeRealmPortal(wo as Portal, ruleset);
                case WeenieType.Door:
                    return null;
                case WeenieType.SlumLord: // disable housing in home realm
                    return null;
            }

            return wo;
        }

        private static WorldObject ProcessHomeRealmPortal(Portal portal, AppliedRuleset ruleset)
        {
            // blacklist town network that isn't in a whitelisted town
            if (portal.Name.Contains("Town Network") && TownManager.GetMonsterTierByDistance(portal.Location) != 1) 
            {
                return null;
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
            switch(wo.WeenieType)
            {
                case WeenieType.Door:
                    return null;
                case WeenieType.Portal:
                    return null;
                case WeenieType.Creature:
                    return ProcessHellgateCreature(wo as Creature, ruleset);
            }

            return wo;
        }

        private static WorldObject ProcessHellgateCreature(Creature creature, AppliedRuleset ruleset)
        {
            var hellgate = HellgateManager.GetHellgate(creature.Location.Instance);

            if (hellgate != null)
            {
                var forgottenCreature = CreateForgottenMonster(hellgate.Tier);
                forgottenCreature.Location = new Position(creature.Location);
                forgottenCreature.ScatterPos = creature.ScatterPos;
                forgottenCreature.Generator = creature.Generator;
                forgottenCreature.GeneratorId = creature.GeneratorId;
                CreatureRealmMutate(forgottenCreature, ruleset);
                MutateDeathTreasureTypeByTier(forgottenCreature, hellgate.Tier);
                creature.Destroy();
                forgottenCreature.SaveBiotaToDatabase();
                return forgottenCreature;
            }

            return null;
        }
        private static WorldObject CreateHideoutStorage(WorldObject wo)
        {
            var storage = WorldObjectFactory.CreateNewWorldObject(600000);
            storage.Location = new Position(wo.Location);
            wo.Destroy();
            return HideoutManager.GetHideoutStorage(storage.Weenie, storage.Location);
        }

        private static void CreatureRealmMutate(Creature creature, AppliedRuleset ruleset)
        {
            if (creature.WeenieType == WeenieType.Creature)
            {
                if (creature.Biota?.PropertiesAttribute2nd?.ContainsKey(PropertyAttribute2nd.MaxHealth) == true)
                {
                    creature.Biota.PropertiesAttribute2nd[PropertyAttribute2nd.MaxHealth].InitLevel =
                        (uint)((double)creature.Biota.PropertiesAttribute2nd[PropertyAttribute2nd.MaxHealth].InitLevel *
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
            return  (uint)value;
        }

        private static Creature CreateForgottenMonster(int tier)
        {
            if (tier == 1)
                return (Creature)WorldObjectFactory.CreateNewWorldObject(601001); // create a Forgotten Leech if this is short distance

            if (tier == 2)
                return (Creature)WorldObjectFactory.CreateNewWorldObject(601002); // create a Forgotten Revenant if this is a medium distance

            if (tier == 3)
                return (Creature)WorldObjectFactory.CreateNewWorldObject(601003); // create a Forgotten Demilich if this is a long distance

            if (tier == 4)
                return (Creature)WorldObjectFactory.CreateNewWorldObject(601004); // create a Forgotten Olthoi Slayer if this is a long distance

            return (Creature)WorldObjectFactory.CreateNewWorldObject(601005); // create a Forgotten Champion if this is an extreme distance
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
                    var forgottenCreature = CreateForgottenMonster(tier);
                    forgottenCreature.Location = new Position(creature.Location);
                    forgottenCreature.ScatterPos = creature.ScatterPos;
                    forgottenCreature.Generator = creature.Generator;
                    forgottenCreature.GeneratorId = creature.GeneratorId;

                    if (ThreadSafeRandom.Next(0, 100) < 25) // 25% chance of mutating a forgotten monster to a Gatekeeper
                        MutateGatekeeper(forgottenCreature);

                    creature.Destroy(); // destroy original creature since we are replacing with a custom monster
                    forgottenCreature.SaveBiotaToDatabase();
                    return forgottenCreature;
                }
            }

            return creature;
        }

        private static void MutateDeathTreasureTypeByTier(Creature creature, int tier)
        {
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

    }
}
