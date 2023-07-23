using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Towns.Entity
{
    internal class MeetingHall
    {
        public readonly List<Player> Players = new List<Player>();
        public readonly Town Home;
        public readonly uint Instance;

        public MeetingHall(uint instance, Town home)
        {
            Instance = instance;
            Home = home;
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
