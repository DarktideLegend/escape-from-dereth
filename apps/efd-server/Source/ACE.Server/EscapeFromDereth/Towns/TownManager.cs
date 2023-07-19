using ACE.Common;
using ACE.Database;
using ACE.Entity;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.EscapeFromDereth.Towns.Entity;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.Realms;
using ACE.Server.WorldObjects;
using log4net;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Towns
{
    // This should probably be moved to ACE.Server/Managers
    public class TownManager
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public readonly static Dictionary<ushort, Town> Towns = new Dictionary<ushort, Town>()
        {
            { 0xC6A9, new Town("Arwic",
                EFDHelpers.slocToPosition("0xC6A90013 [51.633736 68.552765 42.005001] -0.080479 0.000000 0.000000 0.996756 0"),
                EFDHelpers.slocToPosition("0xC5A80004 [22.075813 93.041489 56.005001] 0.464588 0.000000 0.000000 0.885527 393216")) },
            { 0xC98C, new Town("Rithwic",
                EFDHelpers.slocToPosition("0xC98C0028 [113.666000 190.259003 22.009998] -0.707107 0.000000 0.000000 -0.707107 393216"),
                EFDHelpers.slocToPosition("0xCA8C002D [132.680344 106.881424 12.004999] 0.884355 0.000000 0.000000 0.466815 393216")) },
            { 0xCE95, new Town("Eastham",
                EFDHelpers.slocToPosition("0xCE950023 [115.072716 68.856300 20.004999] 0.860280 0.000000 0.000000 -0.509823 0"),
                EFDHelpers.slocToPosition("0xCE960004 [3.525760 93.337540 19.711185] -0.259322 0.000000 0.000000 0.965791 393216")) }
        };

        private readonly static List<Town> TownsList = Towns.Select((kvp) => kvp.Value).ToList();

        private static HashSet<Town> ClosedTowns = new HashSet<Town>();

        public static void Initialize()
        {
            foreach(var town in Towns)
            {
                var result = DatabaseManager.World.GetTownByName(town.Value.Name);

                if (result == null)
                {
                    DatabaseManager.World.CreateTown(town.Value.Name);
                    continue;
                }

                var townEntity = town.Value;
                if (townEntity != null)
                {
                    townEntity.SetOwnership(result.AllegianceId);

                }
            }
        }

        private static Town GetTownByName(string name)
        {
            return Towns.Values.Where(town => town.Name == name).FirstOrDefault();
        }

        public static void UpdateTownOwnership(string name, uint monarchId)
        {
            lock (Towns)
            {
                var town = DatabaseManager.World.GetTownByName(name);

                if (town != null)
                {
                    town.AllegianceId = monarchId;
                    DatabaseManager.World.UpdateTown(town);
                    GetTownByName(name).SetOwnership(monarchId);
                }
            }
        }
  
        public static bool closeTown(Town town)
        {
            if (ClosedTowns.Contains(town))
                return false;

            ClosedTowns.Add(town);
            town.Close();
            return true;
        }


        public static bool openTown(Town town)
        {
            if (ClosedTowns.TryGetValue(town, out var closedTown))
            {
                closedTown.Open();
                return ClosedTowns.Remove(town);
            }

            return false;
        }


        public static Town GetRandomTown()
        {
            int random;
            Town town;

            do
            {
                random = ThreadSafeRandom.Next(0, TownsList.Count - 1);
                town = TownsList[random];
            } while (town.IsClosed);

            return town;
        }

        public static Town GetClosestTownFromPosition(Position position)
        {
            return TownsList.Aggregate((previous, next) =>
            {
                if (previous.Location.DistanceTo(position) <= next.Location.DistanceTo(position))
                    return previous;
                else
                    return next;
            });
        }

        public static int GetMonsterTierByDistance(Position location)
        {
            var distance = GetTownDistance(location);

            if (distance <= 3750)
                return 1;
            if (distance <= 7500)
                return 2;
            if (distance <= 15000)
                return 3;
            if (distance <= 30000)
                return 4;

            return 5;
        }

        public static float GetTownDistance(Position location)
        {
            var town = GetClosestTownFromPosition(location);
            var distance = town.Location.DistanceTo(location);
            return distance;
        }
    }
}
