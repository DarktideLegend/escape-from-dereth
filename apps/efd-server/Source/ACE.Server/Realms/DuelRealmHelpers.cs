using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Factories;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using ACE.Database;
using ACE.Server.Entity.Actions;
using ACE.Server.Entity;
using ACE.Entity;
using ACE.Server.Managers;

namespace ACE.Server.Realms
{
    public static class DuelRealmHelpers
    {


        public static void SetupNewCharacter(Player player)
        {
            PlayerFactoryEx.TeachAugmentations(player);
            PlayerFactoryEx.LearnAllNonAdminSpells(player);
            PlayerFactoryEx.DisableSpellComponentRequirement(player);
            PlayerFactoryEx.LevelUpPlayer(player);
            PlayerFactoryEx.SpendAllXp(player);
            PlayerFactoryEx.GiveDuelGear(player);
        }

        public static Position GetDuelingAreaDrop()
        {
            return GetDuelingAreaDrop(RealmManager.DuelRealm);
        }

        public static Position GetDuelingAreaDrop(WorldRealm realm)
        {
            var pos = new Position(RealmConstants.DuelStagingAreaDrop);
            pos.Instance = realm.StandardRules.GetDefaultInstanceID();
            return pos;
        }
    }
}
