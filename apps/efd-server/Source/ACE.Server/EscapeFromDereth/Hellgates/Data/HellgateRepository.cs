using ACE.Database;
using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.EscapeFromDereth.Hellgates.Entity;
using ACE.Server.EscapeFromDereth.Towns.Entity;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;


namespace ACE.Server.EscapeFromDereth.Hellgates.Data
{
    internal class HellgateRepository
    {
        public List<HellgateLandblock> GetAllHellgates()
        {
            return GetHellgatesFromJson();
        }

        private List<HellgateLandblock> GetHellgatesFromJson()
        {
            return ReadHellgateJson().Select(dto => new HellgateLandblock(
                dto.Name,
                EFDHelpers.slocToPosition(dto.DropLocation),
                EFDHelpers.slocToPosition(dto.ExitLocation),
                EFDHelpers.slocToPosition(dto.BossLocation)
                )).ToList();
        }

        private List<HellgateJsonDto> ReadHellgateJson()
        {
            var assembly = Assembly.GetExecutingAssembly();
            var resourceName = "ACE.Server.EscapeFromDereth.Hellgates.hellgates.json";

            using (var stream = assembly.GetManifestResourceStream(resourceName))
            using (var reader = new StreamReader(stream))
            {
                var json = reader.ReadToEnd();
                var hellgateJsonDtos = JsonConvert.DeserializeObject<List<HellgateJsonDto>>(json);
                return hellgateJsonDtos;
            }
        }

    }
}
