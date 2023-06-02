using ACE.Common;
using ACE.Entity;
using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.WorldObjects;
using log4net;
using System;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Towns
{
    public class TownManager
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private static ImmutableList<Town> Towns = ImmutableList.Create(
            new Town("Arwic", EFDHelpers.slocToPosition("0xC6A90013 [51.633736 68.552765 42.005001] -0.080479 0.000000 0.000000 0.996756 0")), // Arwic
            new Town("Rithwic", EFDHelpers.slocToPosition("0xC98C0028 [113.666000 190.259003 22.009998] -0.707107 0.000000 0.000000 -0.707107 0")), // Rithwic
            new Town("Eastham", EFDHelpers.slocToPosition("0xCE950023 [115.072716 68.856300 20.004999] 0.860280 0.000000 0.000000 -0.509823 0"))); // Eastham

        public class Town
        {
            public readonly string name;
            public readonly Position position;
            public Town(string name, Position position) {
                this.name = name;
                this.position = position;
            }
        }

        public static Town GetRandomTown()
        {
            return Towns[ThreadSafeRandom.Next(0, Towns.Count - 1)];
        }

        public static Town GetClosestTownFromWorldObject(WorldObject wo)
        {
            return Towns.Aggregate((previous, next) =>
            {
                if (previous.position.DistanceTo(wo.Location) <= next.position.DistanceTo(wo.Location))
                    return previous;
                else
                    return next;
            });
        }
    }
}
