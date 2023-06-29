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
        public readonly Position ExitPosition; // location of leader before entering hellgate 
        public uint HellgateGroup;
        public double Expiration;

        public double TimeRemaining
        {
            get
            {
                return Expiration - Time.GetUnixTime();
            }
        }
        public Position DropPosition
        {
            get
            {
                var drop = Landblock.DropLocation;
                var position = new Position(drop);
                position.Instance = Instance;
                return position;
            }
        }


        public Hellgate(HellgateLandblock landblock, HashSet<Player> players, Position exitPosition, double expiration, uint hellgateGroup, uint instance)
        {
            Players = players;
            Landblock = landblock;
            ExitPosition = exitPosition;
            Expiration = expiration;
            HellgateGroup = hellgateGroup;
            Instance = instance;
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
