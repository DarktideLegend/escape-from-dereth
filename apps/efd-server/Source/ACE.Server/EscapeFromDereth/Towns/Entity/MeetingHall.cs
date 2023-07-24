using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;


namespace ACE.Server.EscapeFromDereth.Towns.Entity
{
    internal class MeetingHall : Arena
    {
        public readonly Town Town;

        public MeetingHall(uint instance, List<Player> players, Town town) : base(instance, players)
        {
            Town = town;
        }

    }
}
