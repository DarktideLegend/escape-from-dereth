using ACE.Entity.Models;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;
using System.Collections.Immutable;

namespace ACE.Server.Realms
{
    /// <summary>
    /// Represents a temporary realm created on a landblock by landblock basis (such as an 'instance' in the traditional sense)
    /// </summary>
    public class EphemeralRealm
    {
        public Player Owner { get; set; }
        public List<Player> AllowedPlayers { get; private set; } = new List<Player>();
        public bool OpenToFellowship { get; set; } = true;
        public DateTime ExpiresAt = DateTime.UtcNow.AddDays(1);

        public RulesetTemplate RulesetTemplate { get; set; }
        //public bool IsDuelInstance => RulesetTemplate.

        private EphemeralRealm() { }
        private EphemeralRealm(Player owner, RulesetTemplate template, List<Player> allowedPlayers)
        {
            this.Owner = owner;
            this.RulesetTemplate = template;
            this.AllowedPlayers = allowedPlayers;
        }

        public static EphemeralRealm Initialize(Player owner, List<Realm> realms, List<Player> allowedPlayers = null)
        {
            var baseRealm = RealmManager.GetBaseRealm(owner);
            return Initialize(owner, baseRealm, realms, allowedPlayers);
        }

        private static EphemeralRealm Initialize(Player owner, WorldRealm baseRealm, List<Realm> appliedRealms, List<Player> allowedPlayers)
        {
            string key = baseRealm.Realm.Id.ToString();
            RulesetTemplate template = null;
            RulesetTemplate prevTemplate = baseRealm.RulesetTemplate;
            for(int i = 0; i < appliedRealms.Count; i++)
            {
                var appliedRealm = appliedRealms[i];
                key += $".{appliedRealm.Id}";
                template = RealmManager.GetEphemeralRealmRulesetTemplate(key);
                if (template == null)
                {
                    template = RulesetTemplate.MakeRuleset(prevTemplate, appliedRealm);
                    RealmManager.CacheEphemeralRealmTemplate(key, template);
                }
                prevTemplate = template;
            }

            if (template == null)
                template = prevTemplate;
            

            return new EphemeralRealm(owner, template, allowedPlayers);
        }

        internal void Destroy()
        {
            AllowedPlayers.Clear();
        }
    }
}
