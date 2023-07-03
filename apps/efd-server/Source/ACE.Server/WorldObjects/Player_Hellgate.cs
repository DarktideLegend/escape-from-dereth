using ACE.Entity.Enum;
using ACE.Server.EscapeFromDereth.Hellgates;
using ACE.Server.EscapeFromDereth.Hellgates.Entity;
using ACE.Server.Network.GameMessages.Messages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.WorldObjects
{
    partial class Player
    {
        public void Hellgate_Tick(Hellgate hellgate)
        {
            if (hellgate.Instance != Location.Instance) 
                Session.Network.EnqueueSend(new GameMessageSystemChat($"Your location instance and hellgate instance do not match.", ChatMessageType.System));
            else
            {
                var instance = hellgate.Instance;
                var hellgateGroup = hellgate.HellgateGroup;
                var timeRemaining = TimeSpan.FromMinutes(hellgate.TimeRemaining);

                var dungeonName = hellgate.Landblock.Name;
                Session.Network.EnqueueSend(new GameMessageSystemChat($"Hellgate: [instance] = {instance} [group] = {hellgateGroup} [dungeon] = {dungeonName} [time_remaining] = {timeRemaining}", ChatMessageType.System));
            }
        }
    }
}
