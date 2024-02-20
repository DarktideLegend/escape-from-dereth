using ACE.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Dungeons.Entity
{
    public class DungeonLandblock
    {
        public Position DropLocation;
        public string Name;

        public DungeonLandblock(string name, Position dropLocation)
        {
            this.DropLocation = dropLocation;
            this.Name = name;
        }
    }
}
