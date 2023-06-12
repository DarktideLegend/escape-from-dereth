using ACE.Entity;
using ACE.Server.WorldObjects;
using System.Collections.Generic;
using System.Linq;


namespace ACE.Server.EscapeFromDereth.Hellgates.Entity
{
    public class Hellgate
    {
        public readonly List<Player> Players;
        public readonly LandblockId Landblock;
        public readonly uint Instance;
        public readonly Position LeaderPosition; // location of leader before entering hellgate 

        public Hellgate(LandblockId landblock, List<Player> players, Position leaderPosition, uint instance)
        {
            Players = players;
            Landblock = landblock;
            LeaderPosition = leaderPosition;
            Instance = instance;
        }

        public void Destroy()
        {
            foreach(var player in Players.ToList())
            {
                player.ExitInstance();
            }
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
