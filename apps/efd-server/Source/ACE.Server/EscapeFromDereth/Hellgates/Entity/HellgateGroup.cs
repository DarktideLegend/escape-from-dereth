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
    public class HellgateGroup
    {
        public readonly ObjectGuid Guid;

        public readonly HellgateLandblock HellgateLandblock;

        private HashSet<uint> Hellgates = new HashSet<uint>();

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

        public void AddHellgate(uint instance)
        {


            Hellgates.Add(instance);
        }

        internal HashSet<uint> GetAllHellgates()
        {
            return Hellgates;
        }

        internal void Destroy()
        {
            Hellgates.Clear();
            GuidManager.RecycleDynamicGuid(Guid);
        }

        public HellgateGroup(HellgateLandblock hellgateLandblock, int timespan, int maxActiveHellgates, ObjectGuid guid)
        {

            Guid = guid;
            HellgateLandblock = hellgateLandblock;
            HellgateTimer = TimeSpan.FromMinutes(timespan);
            MaxActiveHellgates = maxActiveHellgates;
            HellgateGroupExpiration = Time.GetUnixTime() + HellgateTimer.TotalSeconds;
        }
    }
}
