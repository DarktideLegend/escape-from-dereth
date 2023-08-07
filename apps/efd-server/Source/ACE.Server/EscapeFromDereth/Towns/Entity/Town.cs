using ACE.Common;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;
using Org.BouncyCastle.Bcpg.Sig;
using System;
using System.Collections.Generic;

namespace ACE.Server.EscapeFromDereth.Towns.Entity
{
    public class Town
    {
        public string Name { get; private set; }
        public CreatureType TownCreatureType { get; }
        public Position Location { get; private set; }
        public uint MeetingHallInstance { get; set; } = 0;
        public double Expiration { get; private set; } = 0;
        public uint AllegianceId { get; private set; } = 0;

        public Storage TownStorage { get; private set; }
        public float TaxRate { get; private set; } = 0.0f;

        public double TimeRemaining => Expiration - Time.GetUnixTime();
        public bool IsExpired => TimeRemaining <= 0;
        public bool ShouldCreateMeetingHall => IsExpired && MeetingHallInstance <= 0;

        public readonly Dictionary<uint, uint> CachedWeenieIdsByTier = new Dictionary<uint, uint>();

        public uint GetWeenieIdByTier(uint tier)
        {
            if (CachedWeenieIdsByTier.TryGetValue(tier, out var id))
                return id;
            else return 0;
        }

        public void LoadWeenieIdCache(List<uint> weenieIds)
        {
            for(var i = 0; i <  weenieIds.Count; i++)
            {
                CachedWeenieIdsByTier[(uint)i + 1] = weenieIds[i];
            }
        }

        public void OpenTownMeetingHall()
        {
            Expiration = 0;
        }

        public enum TownAccouncementState
        {
            Idle,
            Pending
        }
        public TownAccouncementState AnnouncementState { get; private set; } = TownAccouncementState.Idle;

        public Town(string name, CreatureType creatureType, Position location)
        {
            Name = name;
            TownCreatureType = creatureType;
            Location = location;
        }

        public void SetTownStorage(Storage storage)
        {
            TownStorage = storage;
        }

        public void SetAnnouncementStateToIdle()
        {
            AnnouncementState = TownAccouncementState.Idle;
        }

        public void SetOwnership(uint monarchId, double expiration = 0)
        {
            AllegianceId = monarchId;
            Expiration = expiration;
            MeetingHallInstance = 0;
            AnnouncementState = TownAccouncementState.Pending;
        }

        public void SetTaxRate(float rate)
        {
            if (rate >= 0.0f && rate <= 0.5f)
                TaxRate = rate;
        }
    }
}
