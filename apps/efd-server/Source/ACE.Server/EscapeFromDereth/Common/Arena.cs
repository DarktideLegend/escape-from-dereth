using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Common
{
    public class Arena
    {
        public readonly List<Player> Players = new List<Player>();
        public readonly uint Instance;

        public Arena(uint instance)
        {
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
