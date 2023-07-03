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
        public readonly uint Instance;
        public uint HellgateGroup;
        public double Expiration;
        public double BossExpiration;
        public bool BossSpawned = false;
        public int Tier;
        public bool IsOpen;
        public AppliedRuleset Ruleset;
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

        public Position BossPosition
        {
            get
            {
                var bossLocation = Landblock.BossLocation;
                var position = new Position(bossLocation)
                {
                    Instance = Instance
                };
                return position;
            }

        }
        public Position ExitPosition
        {
            get
            {
                var exitLocation = Landblock.ExitLocation;
                var position = new Position(exitLocation)
                {
                    Instance = Instance
                };
                return position;
            }

        }

        public Hellgate(HellgateLandblock landblock, HashSet<Player> players, double expiration, double bossExpiration, uint hellgateGroup, bool isOpen, int tier, AppliedRuleset ruleset, uint instance)
        {
            Players = players;
            Landblock = landblock;
            Expiration = expiration;
            BossExpiration = bossExpiration;
            HellgateGroup = hellgateGroup;
            Tier = tier;
            Instance = instance;
            IsOpen = isOpen;
            Ruleset = ruleset;
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
