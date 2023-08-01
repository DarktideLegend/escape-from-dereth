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
        public string Name;

        public HellgateLandblock(string name, Position dropLocation, Position exitLocation) 
        {
            this.DropLocation = dropLocation;
            this.ExitLocation = exitLocation;
            this.Name = name;   
        }
    }
}
