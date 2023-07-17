using ACE.Common;
using ACE.Entity;
using ACE.Server.Realms;
using ACE.Server.WorldObjects;
using System.Collections.Generic;
using System.Linq;


namespace ACE.Server.EscapeFromDereth.Hellgates.Entity
{
    public class Hellgate
    {
        public readonly HashSet<Player> Players;
        public readonly HellgateLandblock Landblock;

        public AppliedRuleset Ruleset { get; }

        public readonly uint Instance;
        public uint HellgateGroup;
        public double Expiration { get; private set; }
        public double BossExpiration { get; private set; }
        public bool BossSpawned = false;
        public int Tier;
        public bool IsOpen;
        public Hellgate Next;
        public double TimeRemaining
        {
            get
            {
                return Expiration - Time.GetUnixTime();
            }
        }
        public double BossSpawnRemaining
        {
            get
            {
                return BossExpiration - Time.GetUnixTime();
            }
        }

        public bool ShouldSpawnBoss
        {
            get
            {
                var expiration = BossSpawnRemaining;
                return expiration <= 0;
            }
        }

        public Position DropPosition;

        public Position ExitPosition;

        public Position BossPosition;

        public Hellgate(HellgateLandblock landblock, HashSet<Player> players, AppliedRuleset ruleset, Position bossPosition, Position exitPosition, Position dropPosition, double expiration, double bossExpiration, uint hellgateGroup, bool isOpen, int tier, uint instance)
        {
            Players = players;
            Landblock = landblock;
            Ruleset = ruleset;
            Expiration = expiration;
            BossExpiration = bossExpiration;
            HellgateGroup = hellgateGroup;
            Tier = tier;
            Instance = instance;
            IsOpen = isOpen;
            BossPosition = bossPosition;
            ExitPosition = exitPosition;
            DropPosition = dropPosition;
        }

        public void Destroy()
        {
            Players.Clear();
        }

        public void AddPlayer(Player player)
        {
            Players.Add(player);
        }

        public bool RemovePlayer(Player player)
        {
            return Players.Remove(player);
        }

        public void ReduceBossExpiration(double seconds)
        {
            if ((BossExpiration -= seconds) < 0)
                BossExpiration = 0;
        }
    }
}
