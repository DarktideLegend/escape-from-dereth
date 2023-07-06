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
        public double Expiration;
        public double BossExpiration;
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



        public Position DropPosition
        {
            get
            {
                var dropLocation = Landblock.DropLocation;
                var position = new Position(dropLocation)
                {
                    Instance = Instance
                };
                return position;
            }
        }

        public Position ExitPosition;

        public Position BossPosition;

        public Hellgate(HellgateLandblock landblock, HashSet<Player> players, AppliedRuleset ruleset, Position bossPosition, Position exitPosition, double expiration, double bossExpiration, uint hellgateGroup, bool isOpen, int tier, uint instance)
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
    }
}
