using ACE.Common;
using ACE.Entity.Enum;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Factories.Tables
{
    public static class SlayersChance
    {
        public static readonly List<CreatureType> CreatureTypes = new List<CreatureType>()
        {
            CreatureType.Anekshay,
            CreatureType.Armoredillo,
            CreatureType.Banderling,
            CreatureType.BlightedMoarsman,
            CreatureType.Burun,
            CreatureType.Crystal,
            CreatureType.Drudge,
            CreatureType.Eater,
            CreatureType.Fiun,
            CreatureType.Fiun,
            CreatureType.GearKnight,
            CreatureType.Ghost,
            CreatureType.Golem,
            CreatureType.Gromnie,
            CreatureType.Human,
            CreatureType.Knathtead,
            CreatureType.Lugian,
            CreatureType.Mattekar,
            CreatureType.Mite,
            CreatureType.Moarsman,
            CreatureType.Mosswart,
            CreatureType.Mukkir,
            CreatureType.ParadoxOlthoi,
            CreatureType.Penguin,
            CreatureType.PhyntosWasp,
            CreatureType.Rat,
            CreatureType.Reedshark,
            CreatureType.Remoran,
            CreatureType.Sclavus,
            CreatureType.Shadow,
            CreatureType.Shadow,
            CreatureType.Shadow,
            CreatureType.Skeleton,
            CreatureType.Tumerok,
            CreatureType.Tusker,
            CreatureType.Undead,
            CreatureType.Virindi,
            CreatureType.Wisp
        };

        public static CreatureType GetCreatureType()
        {
            return CreatureTypes[ThreadSafeRandom.Next(0, CreatureTypes.Count - 1)];
        }
    }
}
