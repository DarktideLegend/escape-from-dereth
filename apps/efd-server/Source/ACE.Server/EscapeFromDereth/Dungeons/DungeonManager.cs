using ACE.Entity;
using ACE.Entity.Models;
using ACE.Server.EscapeFromDereth.Dungeons.Entity;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Dungeons
{
    internal class DungeonManager
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private static double NextHeartbeatTime;
        private static readonly double HeartbeatInterval = 5.0f;

        private static readonly Dictionary<ulong, Dungeon> ActiveDungeons = new Dictionary<ulong, Dungeon>();



        private static readonly Dictionary<ulong, DungeonLandblock> DungeonLandblocks = new Dictionary<ulong, DungeonLandblock>();

        public static Dungeon GetDungeon(uint landblock)
        {
            if (ActiveDungeons.TryGetValue(landblock, out var dungeon))
                return dungeon;

            return null;
        }

        public static bool PositionIsDungeon(Position pos)
        {
            if (pos == null) return false;

            return pos.IsEphemeralRealm && GetDungeon(pos.LandblockShort) != null;
        }


        public static Dungeon CreateDungeon(Player creator, Position drop, List<Realm> appliedRulesets)
        {
            var existingDungeon = GetDungeon(drop.LandblockShort);

            if (existingDungeon != null)
                return existingDungeon;

            var ephemeralRealm = RealmManager.GetNewEphemeralLandblock(drop.LandblockId, creator, appliedRulesets, true);
            var instance = ephemeralRealm.Instance;
            var isOpen = false;

            var dropPosition = new Position(drop);
            dropPosition.Instance = instance;

            var tier = 1;

            var dungeon = new Dungeon(
                ephemeralRealm.RealmRuleset,
                dropPosition,
                isOpen,
                tier,
                instance);


            ActiveDungeons.TryAdd(drop.LandblockShort, dungeon);

            log.Info($"Creating Dungeon for {creator.Name} - {instance}");
            return dungeon;
        }
    }
}
