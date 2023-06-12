using ACE.Common;
using ACE.Entity;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.Realms;
using ACE.Server.WorldObjects;
using log4net;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Towns
{
    // This should probably be moved to ACE.Server/Managers
    public class TownManager
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public readonly static ImmutableDictionary<ushort, Town> Towns = new Dictionary<ushort, Town>()
        {
            { 0xC6A9, new Town("Arwic",
                EFDHelpers.slocToPosition("0xC6A90013 [51.633736 68.552765 42.005001] -0.080479 0.000000 0.000000 0.996756 0"),
                EFDHelpers.slocToPosition("0xC5A80004 [22.075813 93.041489 56.005001] 0.464588 0.000000 0.000000 0.885527 393216")) },
            { 0xC98C, new Town("Rithwic",
                EFDHelpers.slocToPosition("0xC98C0028 [113.666000 190.259003 22.009998] -0.707107 0.000000 0.000000 -0.707107 0"),
                EFDHelpers.slocToPosition("0xCA8C002D [132.680344 106.881424 12.004999] 0.884355 0.000000 0.000000 0.466815 393216")) },
            { 0xCE95, new Town("Eastham",
                EFDHelpers.slocToPosition("0xCE950023 [115.072716 68.856300 20.004999] 0.860280 0.000000 0.000000 -0.509823 0"),
                EFDHelpers.slocToPosition("0xCE960004 [3.525760 93.337540 19.711185] -0.259322 0.000000 0.000000 0.965791 393216")) }
        }.ToImmutableDictionary();

        private readonly static ImmutableList<Town> TownsList = Towns.ToList().Select((kvp) => kvp.Value).ToImmutableList();

        private static HashSet<Town> ClosedTowns = new HashSet<Town>();

        // This should probably be moved to ACE.Entity
        public class Town
        {
            public string name { get; private set; }
            public Position position { get; private set; }
            public bool isClosed { get; private set; } = false;
            public Position bootLocation { get; private set; }

            public Town(string name, Position position, Position bootLocation)
            {
                this.name = name;
                this.position = position;
                this.bootLocation = bootLocation;
            }

            internal void close()
            {
                isClosed = true;
            }

            internal void open()
            {
                isClosed = false;
            }
        }

        public bool closeTown(Town town)
        {
            if (ClosedTowns.Contains(town))
                return false;

            ClosedTowns.Add(town);
            town.close();
            return true;
        }


        public bool openTown(Town town)
        {
            if (ClosedTowns.TryGetValue(town, out var closedTown))
            {
                closedTown.open();
                return ClosedTowns.Remove(town);
            }

            return false;
        }


        public static Town GetRandomTown()
        {
            return TownsList[ThreadSafeRandom.Next(0, TownsList.Count - 1)];
        }

        public static Town GetClosestTownFromPosition(Position position)
        {
            return TownsList.Aggregate((previous, next) =>
            {
                if (previous.position.DistanceTo(position) <= next.position.DistanceTo(position))
                    return previous;
                else
                    return next;
            });
        }

        public static float GetTownDistanceMultiplier(AppliedRuleset ruleset, Position location)
        {
            var town = GetClosestTownFromPosition(location);
            var distance = town.position.DistanceTo(location);
            var townDistanceMultiplier = ruleset.GetProperty(RealmPropertyFloat.TownDistanceMultiplier);
            return (float)(distance * townDistanceMultiplier);
        }
    }
}
