using ACE.Common;
using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Factories.Tables
{
    public static class SalvageChance
    {
        private static readonly Dictionary<uint, (int, int)> MaterialRanges = new Dictionary<uint, (int, int)>()
        {
            {0, (4, 8) }, // Cloth
            {1, (10, 51) }, // Gems
            {2, (52, 55) }, // Hide
            {3, (57, 64) }, // Metal
            {4, (66, 71) }, // Stone
            {5, (73, 77) } // Wood
        };

        // 50% chance a random bag of salvage for each type will be returned
        public static List<int> Roll()
        {
            var wcids = new List<int>();
            foreach(var r in MaterialRanges)
            {
                if (ThreadSafeRandom.Next(1, 100) > 50)
                {
                    var (min, max) = r.Value;
                    var wcid = Player.MaterialSalvage[ThreadSafeRandom.Next(min, max)];
                    wcids.Add(wcid);
                }
            }

            return wcids;
        }


    }
}
