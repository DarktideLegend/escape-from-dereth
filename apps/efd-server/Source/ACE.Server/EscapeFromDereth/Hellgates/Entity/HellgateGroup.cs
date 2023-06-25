using ACE.Common;
using ACE.Entity;
using ACE.Server.Managers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Hellgates.Entity
{
    internal class HellgateGroup
    {
        public readonly ObjectGuid Guid;

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
                return Hellgates.Count >= MaxActiveHellgates;
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
            GuidManager.RecycleDynamicGuid(Guid);
        }

        public HellgateGroup(Position position, int timespan, int maxActiveHellgates)
        {

            Guid = GuidManager.NewDynamicGuid();
            Location = position;
            HellgateTimer = TimeSpan.FromMinutes(timespan);
            MaxActiveHellgates = maxActiveHellgates;
            HellgateGroupExpiration = Time.GetUnixTime() + HellgateTimer.TotalSeconds;
        }
    }
}
