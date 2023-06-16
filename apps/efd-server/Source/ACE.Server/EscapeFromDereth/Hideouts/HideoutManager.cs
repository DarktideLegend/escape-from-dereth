using ACE.Database;
using ACE.Entity;
using ACE.Entity.Models;
using ACE.Server.Factories;
using ACE.Server.Managers;
using ACE.Server.Realms;
using ACE.Server.WorldObjects;
using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Hideouts
{

    internal class HideoutManager
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        internal static Storage GetHideoutStorage(Weenie weenie, Position location)
        {
            var biota = DatabaseManager.Shard.BaseDatabase.GetHideoutStorage(location);

            if (biota != null)
                return (Storage)WorldObjectFactory.CreateWorldObject(biota);
            else
            {
                // stupid hack to persist a storage object without recycling, player Guids are not dynamic
                var storageGuid = GuidManager.NewPlayerGuid(); 
                var storage = new Storage(weenie, storageGuid);
                storage.Location = new Position(location);
                return storage;
            }
        }
    }
}
