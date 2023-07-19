using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Database.Models.World
{
    public partial class Town
    {
        public uint Id { get; set; }
        public string Name { get; set; }
        public uint AllegianceId { get; set; }
        public float TaxRate { get; set; }
        public int Expiration { get; set; }
        public DateTime LastModified { get; set; }
    }
}
