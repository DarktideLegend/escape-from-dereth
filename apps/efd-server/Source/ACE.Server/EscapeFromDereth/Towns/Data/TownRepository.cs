using ACE.Database;
using ACE.Entity.Enum;
using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.EscapeFromDereth.Towns.Entity;
using log4net;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;


namespace ACE.Server.EscapeFromDereth.Towns.Data
{
    internal class TownRepository
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public List<Town> GetAllTowns()
        {
            var towns = GetTownsFromJson();
            foreach(var town in towns)
            {
                var result = DatabaseManager.World.GetTownByName(town.Name);

                if (result == null)
                    result = DatabaseManager.World.CreateTown(town.Name);

                var cache = LoadWeenieIdCache(town.TownCreatureType);

                town.LoadWeenieIdCache(cache);

                town.SetOwnership(result.AllegianceId, result.Expiration);
                town.SetTaxRate(result.TaxRate);
            }

            return towns;
        }

        public List<List<uint>> LoadWeenieIdCache(CreatureType creatureType)
        {
            var cache = DatabaseManager.World.GetTownCreatureWeenieIds(creatureType);

            log.Info($"Cache for creature type: {creatureType.ToString()}");

            for (var i = 0; i < 5; ++i)
            {
                log.Info($"Monsters for tier {i + 1}");
                foreach(var id in cache[i])
                    log.Info($"Name: {DatabaseManager.World.GetWeenie(id).ClassName}");
            }


            return cache;
        }

        public void UpdateTown(Town town)
        {
            var townModel = DatabaseManager.World.GetTownByName(town.Name);

            if (townModel != null)
            {
                townModel.AllegianceId = town.AllegianceId;
                townModel.TaxRate = town.TaxRate;
                townModel.Expiration = town.Expiration;
                DatabaseManager.World.UpdateTown(townModel);
            }
        }

        internal void PurgeForbiddenMonsterBiotas(List<List<uint>> cache)
        {
            foreach (var ids in cache)
            {
                foreach(var wcid in ids)
                {

                    log.Info($"Purging Forbidden Creatures with WeenieClassId: {wcid}");
                    var forgottenMobs = DatabaseManager.Shard.BaseDatabase.GetBiotasByWcid((uint)wcid).Select(biota => biota.Id);
                    DatabaseManager.Shard.BaseDatabase.RemoveBiotasInParallel(forgottenMobs);
                }
            }
        }

        private List<Town> GetTownsFromJson()
        {
            return ReadTownJson().Select(dto => new Town(
                dto.Name,
                (CreatureType)dto.CreatureType,
                EFDHelpers.slocToPosition(dto.Location)
                )).ToList();
        }

        private List<TownJsonDto> ReadTownJson()
        {
            var assembly = Assembly.GetExecutingAssembly();
            var resourceName = "ACE.Server.EscapeFromDereth.Towns.towns.json";

            using (var stream = assembly.GetManifestResourceStream(resourceName))
            using (var reader = new StreamReader(stream))
            {
                var json = reader.ReadToEnd();
                var townJsonDtos = JsonConvert.DeserializeObject<List<TownJsonDto>>(json);
                return townJsonDtos;
            }
        }

    }
}
