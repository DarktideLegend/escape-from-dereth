using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;


namespace ACE.Server.EscapeFromDereth.Towns.Entity
{
    internal class MeetingHall : Arena
    {
        public readonly Town Town;

        public MeetingHall(uint instance, Town town) : base(instance)
        {
            Town = town;
        }

    }
}
