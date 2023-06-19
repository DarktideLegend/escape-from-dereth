using ACE.Common;
using ACE.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Hellgates.Entity
{
    internal class HellgateGroup
    {
        public readonly Position Location;

        private Dictionary<uint, Hellgate> Hellgates = new Dictionary<uint, Hellgate>();

        private TimeSpan HellgateTimer;

        private int MaxActiveHellgates;

        public double HellgateGroupExpiration { get; private set; } 

        public double TimeRemaining
        {
            get
            {
                return HellgateGroupExpiration - Time.GetUnixTime();
            }
        }

        public bool HasReachedCapacity
        {
            get
            {
                return Hellgates.Count == MaxActiveHellgates;
            }
        }

        public void AddHellgate(Hellgate hellgate)
        {
            if (HasReachedCapacity || Hellgates.ContainsKey(hellgate.Instance))
                return;

            Hellgates.Add(hellgate.Instance, hellgate);
        }

        internal List<Hellgate> GetAllHellgates()
        {
            return Hellgates.Values.ToList();
        }

        internal void Destroy()
        {
            foreach(var hellgate in Hellgates.Values.ToList())
            {
                hellgate.Destroy();
            }

            Hellgates.Clear();
        }

        public HellgateGroup(Position position, int timespan, int maxActiveHellgates)
        {
            this.Location = position;
            this.HellgateTimer = TimeSpan.FromMinutes(timespan);
            this.MaxActiveHellgates = maxActiveHellgates;
            this.HellgateGroupExpiration = Time.GetUnixTime() + HellgateTimer.TotalSeconds;
        }
    }
}
