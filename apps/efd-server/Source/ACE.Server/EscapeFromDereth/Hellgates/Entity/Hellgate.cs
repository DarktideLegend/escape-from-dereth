using ACE.Common;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.EscapeFromDereth.Towns.Entity;
using ACE.Server.Realms;
using ACE.Server.WorldObjects;
using System.Collections.Generic;
using System.Linq;


namespace ACE.Server.EscapeFromDereth.Hellgates.Entity
{
    public class Hellgate : Arena
    {
        public AppliedRuleset Ruleset { get; }
        public uint HellgateGroup;
        public string DungeonName { get; private set; }
        public double Expiration { get; private set; }
        public Town ClosestTown { get; private set; }
        public double BossExpiration { get; private set; }
        public bool ProcessingBossSpawn = false;
        public int Tier;
        public bool IsOpen;
        public Hellgate Next;
        public bool HasBossSpawned { get; private set; } = false;
        public bool HasSurfaceSpawned { get; private set; } = false;
        public double TimeRemaining => Expiration - Time.GetUnixTime();
        public double BossSpawnRemaining => BossExpiration - Time.GetUnixTime();
        public bool ShouldSpawnBoss => BossSpawnRemaining <= 0 && !HasBossSpawned;
        public bool ShouldSpawnSurface => BossSpawnRemaining <= 0 && !HasSurfaceSpawned;


        public Position DropPosition;
        public Position ExitPosition;

        public Hellgate(
            string dungeonName,
            AppliedRuleset ruleset,
            Position exitPosition,
            Position dropPosition,
            double expiration,
            double bossExpiration,
            uint hellgateGroup,
            bool isOpen,
            int tier,
            Town town,
            uint instance) : base(instance)
        {
            DungeonName = dungeonName;
            Ruleset = ruleset;
            Expiration = expiration;
            BossExpiration = bossExpiration;
            HellgateGroup = hellgateGroup;
            ExitPosition = exitPosition;
            DropPosition = dropPosition;
            Tier = tier;
            ClosestTown = town;
            IsOpen = isOpen;
        }

        public void SpawnSurface()
        {
            HasSurfaceSpawned = true;
        }

        public void SpawnBoss()
        {
            HasBossSpawned = true;
        }

        public void ReduceBossExpiration(double seconds)
        {
            if ((BossExpiration -= seconds) < 0)
                BossExpiration = 0;
        }
    }
}
