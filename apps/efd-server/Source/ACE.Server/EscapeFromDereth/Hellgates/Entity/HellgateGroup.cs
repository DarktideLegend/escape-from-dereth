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

        public bool IsOpen { get; set; } = false;

        private TimeSpan HellgateTimer { get; }

        public TimeSpan HellgateBossTimer { get; }

        private int MaxActiveHellgates;

        public double HellgateGroupExpiration { get; private set; }
        public double HellgateBossSpawnExpiration { get; }

        private Hellgate GroupTail;

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

        public void AddHellgate(Hellgate hellgate)
        {
            if (HasReachedCapacity)
                return;

            if (IsOpen)
            {
                if (GroupTail != null)
                {
                    GroupTail.Next = hellgate;
                    GroupTail = hellgate;
                }
                else
                    GroupTail = hellgate;
            } 

            Hellgates.Add(hellgate.Instance);
        }

        internal HashSet<uint> GetAllHellgates()
        {
            return Hellgates;
        }

        internal void Destroy()
        {
            Hellgates.Clear();
            GroupTail = null;
            GuidManager.RecycleDynamicGuid(Guid);
        }

        public HellgateGroup(HellgateLandblock hellgateLandblock, int timespan, int maxActiveHellgates, ObjectGuid guid)
        {

            Guid = guid;
            HellgateLandblock = hellgateLandblock;
            MaxActiveHellgates = maxActiveHellgates;
            HellgateTimer = TimeSpan.FromMinutes(timespan);
            HellgateBossTimer = TimeSpan.FromMinutes(timespan * 0.25); // boss spawns after a quarter of time has elapsed in hellgate
            HellgateGroupExpiration = Time.GetUnixTime() + HellgateTimer.TotalSeconds;
            HellgateBossSpawnExpiration = Time.GetUnixTime() + HellgateBossTimer.TotalSeconds;
        }
    }
}
