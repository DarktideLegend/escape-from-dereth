using System;
using System.Collections.Generic;
using System.Linq;

using log4net;

using ACE.Database;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Models;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

using Biota = ACE.Database.Models.Shard.Biota;
using LandblockInstance = ACE.Database.Models.World.LandblockInstance;
using ACE.Server.Realms;
using ACE.Entity.Enum.Properties;
using ACE.Common;
using ACE.Server.EscapeFromDereth.Hellgates;
using ACE.Server.EscapeFromDereth.Towns;
using ACE.Server.EscapeFromDereth.Hideouts;
using static Google.Protobuf.Reflection.SourceCodeInfo.Types;

namespace ACE.Server.Factories
{
    public static class WorldObjectFactory
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// A new biota be created taking all of its values from weenie.
        /// </summary>
        public static WorldObject CreateWorldObject(Weenie weenie, ObjectGuid guid, AppliedRuleset ruleset = null, Position location = null)
        {
            if (ruleset == null)
                ruleset = RealmManager.DefaultRuleset;

            if (weenie == null)
                return null;

            var objWeenieType = weenie.WeenieType;

            var isOverridable = ruleset.GetProperty(RealmPropertyBool.IsOverridable);
            var isCustomContentOnly = ruleset.GetProperty(RealmPropertyBool.IsCustomContentOnly);
            var hasCustomContent = weenie.GetProperty(PropertyBool.IsCustomContent) ?? false;

            // if this weenie has custom content but this realm isn't overridable, return nothing
            if (hasCustomContent && !isOverridable)
                return null;

            // if this is strictly a custom content only realm, return nothing unless it's a corpse
            if (isCustomContentOnly && !hasCustomContent && weenie.WeenieType != WeenieType.Corpse)
                return null;

            var shouldOverride = hasCustomContent && isOverridable;

            switch (objWeenieType)
            {
                case WeenieType.Undef:
                    log.Warn($"CreateWorldObject: {weenie.GetName()} (0x{guid}:{weenie.WeenieClassId}) - WeenieType is Undef, Object cannot be created.");
                    return null;
                case WeenieType.LifeStone:
                    if (!ruleset.GetProperty(RealmPropertyBool.HasLifestones) && !shouldOverride)
                        return null;
                    return new Lifestone(weenie, guid);
                case WeenieType.Door:
                    if (!ruleset.GetProperty(RealmPropertyBool.HasDoors) && !shouldOverride)
                        return null;
                    return new Door(weenie, guid);
                case WeenieType.Portal:
                    if (!ruleset.GetProperty(RealmPropertyBool.HasPortals) && !shouldOverride)
                        return null;
                    return new Portal(weenie, guid);
                case WeenieType.Book:
                    return new Book(weenie, guid);
                case WeenieType.PKModifier:
                    return new PKModifier(weenie, guid);
                case WeenieType.Cow:
                    return CreateCreatureObject(weenie, guid, ruleset, location, shouldOverride);
                case WeenieType.Creature:
                    return CreateCreatureObject(weenie, guid, ruleset, location, shouldOverride);
                case WeenieType.Container:
                    return new Container(weenie, guid);
                case WeenieType.Scroll:
                    return new Scroll(weenie, guid);
                case WeenieType.Vendor:
                    return new Vendor(weenie, guid, ruleset);
                case WeenieType.Coin:
                    return new Coin(weenie, guid);
                case WeenieType.Key:
                    return new Key(weenie, guid);
                case WeenieType.Food:
                    return new Food(weenie, guid);
                case WeenieType.Gem:
                    return new Gem(weenie, guid);
                case WeenieType.Game:
                    return new Game(weenie, guid);
                case WeenieType.GamePiece:
                    return new GamePiece(weenie, guid, ruleset);
                case WeenieType.AllegianceBindstone:
                    if (!ruleset.GetProperty(RealmPropertyBool.HasBindstones) && !shouldOverride)
                        return null;
                    return new Bindstone(weenie, guid);
                case WeenieType.Clothing:
                    return new Clothing(weenie, guid);
                case WeenieType.MeleeWeapon:
                    return new MeleeWeapon(weenie, guid);
                case WeenieType.MissileLauncher:
                    return new MissileLauncher(weenie, guid);
                case WeenieType.Ammunition:
                    return new Ammunition(weenie, guid);
                case WeenieType.Missile:
                    return new Missile(weenie, guid);
                case WeenieType.Corpse:
                    return new Corpse(weenie, guid);
                case WeenieType.Chest:
                    return new Chest(weenie, guid);
                case WeenieType.Stackable:
                    return new Stackable(weenie, guid);
                case WeenieType.SpellComponent:
                    return new SpellComponent(weenie, guid);
                case WeenieType.Switch:
                    return new Switch(weenie, guid);
                case WeenieType.AdvocateFane:
                    return new AdvocateFane(weenie, guid);
                case WeenieType.AdvocateItem:
                    return new AdvocateItem(weenie, guid);
                case WeenieType.Healer:
                    return new Healer(weenie, guid);
                case WeenieType.Lockpick:
                    return new Lockpick(weenie, guid);
                case WeenieType.Caster:
                    return new Caster(weenie, guid);
                case WeenieType.ProjectileSpell:
                    return new SpellProjectile(weenie, guid);
                case WeenieType.HotSpot:
                    return new Hotspot(weenie, guid);
                case WeenieType.ManaStone:
                    return new ManaStone(weenie, guid);
                case WeenieType.House:
                    if (!ruleset.GetProperty(RealmPropertyBool.HasHousing) && !shouldOverride)
                        return null;
                    return new House(weenie, guid);
                case WeenieType.SlumLord:
                    if (!ruleset.GetProperty(RealmPropertyBool.HasHousing) && !shouldOverride)
                        return null;
                    return new SlumLord(weenie, guid);
                case WeenieType.Storage:
                    return CreateHideoutStorage(weenie, location);
                case WeenieType.Hook:
                    if (!ruleset.GetProperty(RealmPropertyBool.HasHousing) && !shouldOverride)
                        return null;
                    return new Hook(weenie, guid);
                case WeenieType.Hooker:
                    if (!ruleset.GetProperty(RealmPropertyBool.HasHousing) && !shouldOverride)
                        return null;
                    return new Hooker(weenie, guid);
                case WeenieType.HousePortal:
                    if (!ruleset.GetProperty(RealmPropertyBool.HasHousing) && !shouldOverride)
                        return null;
                    return new HousePortal(weenie, guid);
                case WeenieType.SkillAlterationDevice:
                    return new SkillAlterationDevice(weenie, guid);
                case WeenieType.PressurePlate:
                    return new PressurePlate(weenie, guid);
                case WeenieType.PetDevice:
                    return new PetDevice(weenie, guid);
                case WeenieType.Pet:
                    return new Pet(weenie, guid, ruleset);
                case WeenieType.CombatPet:
                    return new CombatPet(weenie, guid, ruleset);
                case WeenieType.Allegiance:
                    return new Allegiance(weenie, guid);
                case WeenieType.AugmentationDevice:
                    return new AugmentationDevice(weenie, guid);
                case WeenieType.AttributeTransferDevice:
                    return new AttributeTransferDevice(weenie, guid);
                case WeenieType.CraftTool:
                    return new CraftTool(weenie, guid);
                case WeenieType.LightSource:
                    return new LightSource(weenie, guid);
                default:
                    return new GenericObject(weenie, guid);
            }
        }

        private static WorldObject CreateHideoutStorage(Weenie weenie, Position location)
        {
            if (location == null)
                return null;

            if (location.RealmID != 0x7FFF)
                return null;

            return HideoutManager.GetHideoutStorage(weenie, location);
        }

        private static WorldObject CreateCreatureObject(Weenie weenie, ObjectGuid guid, AppliedRuleset ruleset, Position location, bool shouldOverride)
        {
            var hasMonsters = ruleset.GetProperty(RealmPropertyBool.HasMonsters);
            var isVendorNpcOnly = ruleset.GetProperty(RealmPropertyBool.IsVendorNpcOnly);

            var hellgate = HellgateManager.GetHellgate(location.Instance);
            var isHellgateInstance = hellgate != null;
            var tier = isHellgateInstance ? hellgate.Tier : TownManager.GetMonsterTierByDistance(location);

            var creature = new Creature(weenie, guid, ruleset);

            if (shouldOverride)
                return creature;

            if (creature.IsMonster && hasMonsters)
            {
                creature.Destroy();
                return CreateMonster(ruleset, location, tier);
            }

            if (!isVendorNpcOnly)
                return creature;
            else
            {
                creature.Destroy();
                return null;
            }
        }

        private static WorldObject CreateMonster(AppliedRuleset ruleset, Position location, int tier)
        {
            if (tier == 1)
                return CreateNewWorldObject(601001, ruleset, location); // create a Forgotten Leech if this is short distance

            if (tier == 2)
                return CreateNewWorldObject(601002, ruleset, location); // create a Forgotten Revenant if this is a medium distance

            if (tier == 3)
                return CreateNewWorldObject(601003, ruleset, location); // create a Forgotten Demilich if this is a long distance

            if (tier == 4)
                return CreateNewWorldObject(601004, ruleset, location); // create a Forgotten Olthoi Slayer if this is a long distance

            return CreateNewWorldObject(601005, ruleset, location); // create a Forgotten Champion if this is an extreme distance
        }

        /// <summary>
        /// Restore a WorldObject from the database.
        /// Any properties tagged as Ephemeral will be removed from the biota.
        /// </summary>
        public static WorldObject CreateWorldObject(ACE.Entity.Models.Biota biota)
        {
            switch (biota.WeenieType)
            {
                case WeenieType.Undef:
                    return null;
                case WeenieType.LifeStone:
                    return new Lifestone(biota);
                case WeenieType.Door:
                    return new Door(biota);
                case WeenieType.Portal:
                    return new Portal(biota);
                case WeenieType.Book:
                    return new Book(biota);
                case WeenieType.PKModifier:
                    return new PKModifier(biota);
                case WeenieType.Cow:
                    return new Cow(biota);
                case WeenieType.Creature:
                    return new Creature(biota);
                case WeenieType.Container:
                    return new Container(biota);
                case WeenieType.Scroll:
                    return new Scroll(biota);
                case WeenieType.Vendor:
                    return new Vendor(biota);
                case WeenieType.Coin:
                    return new Coin(biota);
                case WeenieType.Key:
                    return new Key(biota);
                case WeenieType.Food:
                    return new Food(biota);
                case WeenieType.Gem:
                    return new Gem(biota);
                case WeenieType.Game:
                    return new Game(biota);
                case WeenieType.GamePiece:
                    return new GamePiece(biota);
                case WeenieType.AllegianceBindstone:
                    return new Bindstone(biota);
                case WeenieType.Clothing:
                    return new Clothing(biota);
                case WeenieType.MeleeWeapon:
                    return new MeleeWeapon(biota);
                case WeenieType.MissileLauncher:
                    return new MissileLauncher(biota);
                case WeenieType.Ammunition:
                    return new Ammunition(biota);
                case WeenieType.Missile:
                    return new Missile(biota);
                case WeenieType.Corpse:
                    return new Corpse(biota);
                case WeenieType.Chest:
                    return new Chest(biota);
                case WeenieType.Stackable:
                    return new Stackable(biota);
                case WeenieType.SpellComponent:
                    return new SpellComponent(biota);
                case WeenieType.Switch:
                    return new Switch(biota);
                case WeenieType.AdvocateFane:
                    return new AdvocateFane(biota);
                case WeenieType.AdvocateItem:
                    return new AdvocateItem(biota);
                case WeenieType.Healer:
                    return new Healer(biota);
                case WeenieType.Lockpick:
                    return new Lockpick(biota);
                case WeenieType.Caster:
                    return new Caster(biota);
                case WeenieType.HotSpot:
                    return new Hotspot(biota);
                case WeenieType.ManaStone:
                    return new ManaStone(biota);
                case WeenieType.House:
                    return new House(biota);
                case WeenieType.SlumLord:
                    return new SlumLord(biota);
                case WeenieType.Storage:
                    return new Storage(biota);
                case WeenieType.Hook:
                    return new Hook(biota);
                case WeenieType.Hooker:
                    return new Hooker(biota);
                case WeenieType.HousePortal:
                    return new HousePortal(biota);
                case WeenieType.SkillAlterationDevice:
                    return new SkillAlterationDevice(biota);
                case WeenieType.PressurePlate:
                    return new PressurePlate(biota);
                case WeenieType.PetDevice:
                    return new PetDevice(biota);
                case WeenieType.Pet:
                    return new Pet(biota);
                case WeenieType.CombatPet:
                    return new CombatPet(biota);
                case WeenieType.Allegiance:
                    return new Allegiance(biota);
                case WeenieType.AugmentationDevice:
                    return new AugmentationDevice(biota);
                case WeenieType.AttributeTransferDevice:
                    return new AttributeTransferDevice(biota);
                case WeenieType.CraftTool:
                    return new CraftTool(biota);
                case WeenieType.LightSource:
                    return new LightSource(biota);
                default:
                    return new GenericObject(biota);
            }
        }

        /// <summary>
        /// Restore a WorldObject from the database.
        /// Any properties tagged as Ephemeral will be removed from the biota.
        /// </summary>
        public static WorldObject CreateWorldObject(Biota databaseBiota)
        {
            var biota = ACE.Database.Adapter.BiotaConverter.ConvertToEntityBiota(databaseBiota);

            return CreateWorldObject(biota);
        }

        /// <summary>
        /// This will create a list of WorldObjects, all with new GUIDs and for every position provided.
        /// </summary>
        public static List<WorldObject> CreateNewWorldObjects(List<LandblockInstance> sourceObjects, List<Biota> biotas, uint? restrict_wcid, uint iid, AppliedRuleset ruleset)
        {
            var results = new List<WorldObject>();

            // spawn direct landblock objects
            foreach (var instance in sourceObjects.Where(x => x.IsLinkChild == false))
            {
                var weenie = DatabaseManager.World.GetCachedWeenie(instance.WeenieClassId);

                if (weenie == null)
                {
                    log.Warn($"CreateNewWorldObjects: Database does not contain weenie {instance.WeenieClassId} for instance 0x{instance.Guid:X8} at {new Position(instance.ObjCellId, instance.OriginX, instance.OriginY, instance.OriginZ, instance.AnglesX, instance.AnglesY, instance.AnglesZ, instance.AnglesW, iid).ToLOCString()}");
                    continue;
                }

                if (restrict_wcid != null && restrict_wcid.Value != instance.WeenieClassId)
                    continue;

                var guid = new ObjectGuid(instance.Guid);

                WorldObject worldObject;

                var biota = biotas.FirstOrDefault(b => b.Id == instance.Guid);
                if (biota == null)
                {

                    var location = new Position(instance.ObjCellId, instance.OriginX, instance.OriginY, instance.OriginZ, instance.AnglesX, instance.AnglesY, instance.AnglesZ, instance.AnglesW, iid);
                    worldObject = CreateWorldObject(weenie, guid, ruleset, location);

                    if (worldObject != null)
                    {

                        worldObject.Location = location;
                    }


                }
                else
                {
                    worldObject = CreateWorldObject(biota);

                    if (worldObject.Location == null)
                    {
                        log.Warn($"CreateNewWorldObjects: {worldObject.Name} (0x{worldObject.Guid}) Location was null. CreationTimestamp = {worldObject.CreationTimestamp} ({Common.Time.GetDateTimeFromTimestamp(worldObject.CreationTimestamp ?? 0).ToLocalTime()}) | Location restored from world db instance.");
                        worldObject.Location = new Position(instance.ObjCellId, instance.OriginX, instance.OriginY, instance.OriginZ, instance.AnglesX, instance.AnglesY, instance.AnglesZ, instance.AnglesW, iid);
                    }
                }

                if (worldObject != null)
                {
                    // queue linked child objects
                    foreach (var link in instance.LandblockInstanceLink)
                    {
                        var linkInstance = sourceObjects.FirstOrDefault(x => x.Guid == link.ChildGuid);

                        if (linkInstance != null)
                            worldObject.LinkedInstances.Add(linkInstance);
                    }

                    results.Add(worldObject);
                }
            }
            return results;
        }


        /* public HashSet<uint> RealmTreasureTypes = new HashSet<uint>()
        {
            453,    // tier 1
            464,    // tier 5
            1000,   // tier 7
            1005    // tier 8
        };*/

        private static void MutateCustomContent(WorldObject wo)
        {
            if (!(wo is Player) && wo is Creature && (wo as Creature).IsMonster)
            {
                MutateDeathTreasureTypeByTier(wo);

                if (!wo.IsInHellgate && !(wo is CombatPet) && ThreadSafeRandom.Next(1, 100) < 8) // 8% chance of spawning a Gatekeeper instead of a monster
                {
                    MutateGatekeeper(wo);
                }

                wo.SaveBiotaToDatabase();
            }

        }

        private static void MutateDeathTreasureTypeByTier(WorldObject wo)
        {
            if (!(wo is Creature) || wo.IsGenerator)
                return;

            if (!(wo as Creature).IsMonster)
                return;

            var creature = wo as Creature;
            var instance = creature.Location.Instance;
            var hellgate = HellgateManager.GetHellgate(instance);
            if (hellgate == null)
            {
                creature.DeathTreasureType = 453;
                return;
            }

            var tier = hellgate.Tier;

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
        }


        /// <summary>
        /// Creates a list of WorldObjects from a list of Biotas
        /// </summary>
        public static List<WorldObject> CreateWorldObjects(List<ACE.Database.Models.Shard.Biota> biotas)
        {
            var results = new List<WorldObject>();

            foreach (var biota in biotas)
            {
                var worldObject = CreateWorldObject(biota);
                //worldObject.CalculateObjDesc();

                if (worldObject != null)
                    results.Add(worldObject);
            }
            return results;
        }

        /// <summary>
        /// This will create a new WorldObject with a new GUID.
        /// </summary>
        public static WorldObject CreateNewWorldObject(Weenie weenie, AppliedRuleset ruleset, Position location = null)
        {
            var guid = GuidManager.NewDynamicGuid();

            var worldObject = CreateWorldObject(weenie, guid, ruleset, location);

            if (worldObject == null)
                GuidManager.RecycleDynamicGuid(guid);

            return worldObject;
        }

        /// <summary>
        /// This will create a new WorldObject with a new GUID.
        /// It will return null if weenieClassId was not found.
        /// </summary>
        public static WorldObject CreateNewWorldObject(uint weenieClassId, AppliedRuleset ruleset = null, Position location = null)
        {
            var weenie = DatabaseManager.World.GetCachedWeenie(weenieClassId);

            if (weenie == null)
                return null;

            var wo = CreateNewWorldObject(weenie, ruleset, location);
            if (wo != null)
            {
                wo.Location = location;
                MutateCustomContent(wo);
                return wo;
            }

            return null;
        }

        /// <summary>
        /// This will create a new WorldObject with a new GUID.
        /// It will return null if weenieClassName was not found.
        /// </summary>
        public static WorldObject CreateNewWorldObject(string weenieClassName)
        {
            var weenie = DatabaseManager.World.GetCachedWeenie(weenieClassName);

            if (weenie == null)
                return null;

            return CreateNewWorldObject(weenie.WeenieClassId);
        }

        /// <summary>
        /// Creates a new WorldObject from a CreateList item
        /// </summary>
        public static WorldObject CreateNewWorldObject(PropertiesCreateList item)
        {
            var isTreasure = (item.DestinationType & DestinationType.Treasure) != 0;

            var wo = CreateNewWorldObject(item.WeenieClassId);

            if (wo == null) return null;

            wo.DestinationType = (DestinationType)item.DestinationType;

            if (item.StackSize > 1)
                wo.SetStackSize(item.StackSize);

            if (item.Palette > 0)
                wo.PaletteTemplate = item.Palette;

            // if treasure, this is probability instead of shade
            if (!isTreasure)
                wo.Shade = item.Shade;

            return wo;
        }
    }
}

