using ACE.Common;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.Realms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Dungeons.Entity
{
    public class Dungeon : Arena
    {
        public AppliedRuleset Ruleset { get; }

        public bool ProcessingBossSpawn = false;

        public uint Tier;

        public bool IsOpen;

        public Dungeon Next;
        public bool BossStatus { get; private set; } = false;

        private List<uint> DungeonCreatures = new List<uint>();

        public double BossSpawnCountdown { get; private set; } = Time.GetUnixTime();
        public double BossSpawnRemaining => BossSpawnCountdown - Time.GetUnixTime();
        public bool ShouldSpawnBoss => BossSpawnRemaining <= 0 && !BossStatus;

        public double? MarkForDestruction { get; internal set; }

        public Position DropPosition;

        public readonly CreatureType CreatureType;


        public Dungeon(
            AppliedRuleset ruleset,
            Position dropPosition,
            bool isOpen,
            uint tier,
            List<uint> dungeonCreatures,
            CreatureType creatureType,
            uint instance) : base(instance)
        {
            Ruleset = ruleset;
            DropPosition = dropPosition;
            Tier = tier;
            IsOpen = isOpen;
            DungeonCreatures = dungeonCreatures;
            CreatureType = creatureType;
        }

        public void ResetBoss()
        {
            BossStatus = false;
            SetBossSpawnCountdown(Time.GetUnixTime() + TimeSpan.FromMinutes(30).TotalSeconds);
        }

        public void SpawnBoss()
        {
            BossStatus = true;
        }

        public uint GetRandomCreature()
        {
            var randomIndex = ThreadSafeRandom.Next(0, DungeonCreatures.Count - 1);
            return DungeonCreatures[randomIndex];
        }

        public void SetBossSpawnCountdown(double countdown)
        {
            BossSpawnCountdown = countdown;
        }
    }
}
