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

        private bool IsOpen = false;

        private TimeSpan HellgateTimer { get; }

        public TimeSpan HellgateBossTimer { get; }

        private int MaxActiveHellgates;

        public double HellgateGroupExpiration { get; private set; }
        public double HellgateBossSpawnExpiration { get; }

        public double TimeRemaining
        {
            get
            {
                return HellgateGroupExpiration - Time.GetUnixTime();
            }
        }

        public bool ShouldDestroy
        {
            get
            {
                return TimeRemaining <= 0;
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
            MaxActiveHellgates = maxActiveHellgates;
            HellgateTimer = TimeSpan.FromMinutes(timespan);
            HellgateBossTimer = TimeSpan.FromMinutes(timespan - timespan * 0.25);
            HellgateGroupExpiration = Time.GetUnixTime() + HellgateTimer.TotalSeconds;
            HellgateBossSpawnExpiration = Time.GetUnixTime() + HellgateBossTimer.TotalSeconds;
        }
    }
}
