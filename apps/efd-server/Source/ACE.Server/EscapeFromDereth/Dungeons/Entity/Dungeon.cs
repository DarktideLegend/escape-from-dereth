using ACE.Common;
using ACE.Entity;
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

        public int Tier;

        public bool IsOpen;

        public Dungeon Next;
        public double BossSpawnCountdown { get; private set; }
        public double BossSpawnRemaining => BossSpawnCountdown - Time.GetUnixTime();
        public bool ShouldSpawnBoss => BossSpawnRemaining <= 0;


        public Position DropPosition;


        public Dungeon(
            AppliedRuleset ruleset,
            Position dropPosition,
            bool isOpen,
            int tier,
            uint instance) : base(instance)
        {
            Ruleset = ruleset;
            DropPosition = dropPosition;
            Tier = tier;
            IsOpen = isOpen;
        }

        public void SetBossSpawnCountdown(double countdown)
        {
            BossSpawnCountdown = countdown;
        }
    }
}
