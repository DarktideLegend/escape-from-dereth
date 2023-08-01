using ACE.Entity.Enum.Properties;
using ACE.Server.EscapeFromDereth.Hellgates;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.WorldObjects
{
    partial class WorldObject
    {
        
        public bool IsHellgateBoss => Name == "Hellgate Boss";

        public bool IsMeetingHallBoss => WeenieClassId == 4000226;

        public bool SpawnHellgateOnDeath
        {
            get => GetProperty(PropertyBool.SpawnHellgateOnDeath) ?? false;
            set { if (!value) RemoveProperty(PropertyBool.SpawnHellgateOnDeath); else SetProperty(PropertyBool.SpawnHellgateOnDeath, value); }
        }

        public bool SpawnHellgateSurfaceOnDeath = false;

        public bool IsInHellgate => HellgateManager.PositionIsHellgate(Location);
    }
}
