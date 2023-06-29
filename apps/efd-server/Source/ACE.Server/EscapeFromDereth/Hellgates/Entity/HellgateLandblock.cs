using ACE.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Hellgates.Entity
{
    public class HellgateLandblock
    {
        public Position DropLocation;
        public Position ExitLocation;
        public Position BossLocation;
        public string Name;

        public HellgateLandblock(Position dropLocation, Position exitLocation, Position bossLocation, string name) 
        {
            this.DropLocation = dropLocation;
            this.ExitLocation = exitLocation;
            this.BossLocation = bossLocation;
            this.Name = name;   
        }
    }
}
