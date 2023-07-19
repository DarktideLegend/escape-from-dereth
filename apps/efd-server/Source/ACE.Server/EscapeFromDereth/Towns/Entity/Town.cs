using ACE.Common;
using ACE.Entity;


namespace ACE.Server.EscapeFromDereth.Towns.Entity
{
    public class Town
    {
        public string Name { get; private set; }
        public Position Location { get; private set; }
        public bool IsClosed { get; private set; } = false;
        public Position BootLocation { get; private set; }
        public Position BossLocation { get; private set; }

        public uint AllegianceId { get; private set; } = 0;

        public float TaxRate = 0.0f;

        public Town(string name, Position position, Position bootLocation)
        {
            Name = name;
            Location = position;
            BootLocation = bootLocation;
        }

        public void SetOwnership(uint monarchId)
        {
            AllegianceId = monarchId;
        }

        public void SetTaxRate(float rate)
        {
            if (rate >= 0 && rate < 1)
                TaxRate = rate;
        }

        internal void Close()
        {
            IsClosed = true;
        }

        internal void Open()
        {
            IsClosed = false;
        }
    }
}
