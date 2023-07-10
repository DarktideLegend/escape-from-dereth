using ACE.Entity;


namespace ACE.Server.EscapeFromDereth.Towns.Entity
{
    public class Town
    {
        public string Name { get; private set; }
        public Position Location { get; private set; }
        public bool IsClosed { get; private set; } = false;
        public Position BootLocation { get; private set; }

        public Position BindstoneLocation { get; private set; }

        public Town(string name, Position position, Position bootLocation)
        {
            Name = name;
            Location = position;
            BootLocation = bootLocation;
            //BindstoneLocation = bindstoneLocation;
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
