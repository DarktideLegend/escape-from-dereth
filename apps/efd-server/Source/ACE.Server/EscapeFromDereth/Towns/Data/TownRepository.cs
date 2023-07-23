using ACE.Database;
using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.EscapeFromDereth.Towns.Entity;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;


namespace ACE.Server.EscapeFromDereth.Towns.Data
{
    internal class TownRepository
    {
        public List<Town> GetAllTowns()
        {
            var towns = GetTownsFromJson();
            foreach(var town in towns)
            {
                var result = DatabaseManager.World.GetTownByName(town.Name);

                if (result == null)
                    result = DatabaseManager.World.CreateTown(town.Name);

                town.SetOwnership(result.AllegianceId, result.Expiration);
                town.SetTaxRate(result.TaxRate);
            }

            return towns;
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

        private List<Town> GetTownsFromJson()
        {
            return ReadTownJson().Select(dto => new Town(
                dto.Name,
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
