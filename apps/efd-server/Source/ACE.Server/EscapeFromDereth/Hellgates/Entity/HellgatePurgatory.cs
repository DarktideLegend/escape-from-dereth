using ACE.Common;
using ACE.Entity;
using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Hellgates.Entity
{
    internal class HellgatePurgatory : Hellgate
    {
        public double ArenaExpiration { get; private set; } 

        public double TimeRemaining
        {
            get
            {
                return ArenaExpiration - Time.GetUnixTime();
            }
        }
        public HellgatePurgatory(LandblockId landblock, HashSet<Player> players, Position leaderPosition, double expiration, uint instance) : base(landblock, players, leaderPosition, instance)
        {
            this.ArenaExpiration = expiration;
        }
    }
}
