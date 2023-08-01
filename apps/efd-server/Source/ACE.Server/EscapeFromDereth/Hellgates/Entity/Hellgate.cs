using ACE.Common;
using ACE.Entity;
using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.Realms;
using ACE.Server.WorldObjects;
using System.Collections.Generic;
using System.Linq;


namespace ACE.Server.EscapeFromDereth.Hellgates.Entity
{
    public class Hellgate : Arena
    {
        public readonly HellgateLandblock Landblock;
        public AppliedRuleset Ruleset { get; }
        public uint HellgateGroup;
        public double Expiration { get; private set; }
        public double BossExpiration { get; private set; }
        public bool BossSpawned = false;
        public int Tier;
        public bool IsOpen;
        public Hellgate Next;
        public double TimeRemaining => Expiration - Time.GetUnixTime();
        public double BossSpawnRemaining => BossExpiration - Time.GetUnixTime();
        public bool ShouldSpawnBoss => BossSpawnRemaining <= 0;
        public Position DropPosition;
        public Position ExitPosition;

        public Hellgate(
            HellgateLandblock landblock,
            AppliedRuleset ruleset,
            Position exitPosition,
            Position dropPosition,
            double expiration,
            double bossExpiration,
            uint hellgateGroup,
            bool isOpen,
            int tier,
            uint instance) : base(instance)
        {
            Landblock = landblock;
            Ruleset = ruleset;
            Expiration = expiration;
            BossExpiration = bossExpiration;
            HellgateGroup = hellgateGroup;
            ExitPosition = exitPosition;
            DropPosition = dropPosition;
            Tier = tier;
            IsOpen = isOpen;
        }

        public void ReduceBossExpiration(double seconds)
        {
            if ((BossExpiration -= seconds) < 0)
                BossExpiration = 0;
        }
    }
}
