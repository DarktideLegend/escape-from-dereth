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
        public string Name;

        public HellgateLandblock(Position dropLocation, string name) 
        {
            this.DropLocation = dropLocation;
            this.Name = name;   
        }
    }
}
