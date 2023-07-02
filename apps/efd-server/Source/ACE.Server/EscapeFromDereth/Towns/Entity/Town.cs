using ACE.Entity;


namespace ACE.Server.EscapeFromDereth.Towns.Entity
{
    public class Town
    {
        public string name { get; private set; }
        public Position position { get; private set; }
        public bool isClosed { get; private set; } = false;
        public Position bootLocation { get; private set; }

        public Town(string name, Position position, Position bootLocation)
        {
            this.name = name;
            this.position = position;
            this.bootLocation = bootLocation;
        }

        internal void close()
        {
            isClosed = true;
        }

        internal void open()
        {
            isClosed = false;
        }
    }
}
