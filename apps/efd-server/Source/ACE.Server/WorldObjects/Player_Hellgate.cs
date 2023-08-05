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
        public void PrintHellgateInfo(Hellgate hellgate)
        {
            if (hellgate.Instance != Location.Instance) 
                Session.Network.EnqueueSend(new GameMessageSystemChat($"Your location instance and hellgate instance do not match.", ChatMessageType.System));
            else
            {
                var instance = hellgate.Instance;
                var hellgateGroup = hellgate.HellgateGroup;
                var hellgateTimeRemaining = TimeSpan.FromSeconds(hellgate.TimeRemaining);
                var hellgateCountdown = hellgateTimeRemaining.ToString(@"hh\:mm\:ss");
                var bossTimeRemaining = TimeSpan.FromSeconds(hellgate.BossSpawnRemaining);
                var bossCountdown = bossTimeRemaining.ToString(@"hh\:mm\:ss");

                var dungeonName = hellgate.DungeonName;
                Session.Network.EnqueueSend(new GameMessageSystemChat($"Hellgate: [instance] = {instance} [group] = {hellgateGroup} [dungeon] = {dungeonName}", ChatMessageType.System));
                Session.Network.EnqueueSend(new GameMessageSystemChat($"Hellgate: [is-open] = {hellgate.IsOpen}", ChatMessageType.System));
                Session.Network.EnqueueSend(new GameMessageSystemChat($"Hellgate: [hellgate_countdown] = {hellgateCountdown}", ChatMessageType.System));
                if (hellgate.BossSpawnRemaining > 0)
                    Session.Network.EnqueueSend(new GameMessageSystemChat($"Hellgate: [boss_countdown] = {bossCountdown}", ChatMessageType.System));
            }
        }

        public void Hellgate_Tick(Hellgate hellgate)
        {
            PrintHellgateInfo(hellgate);
        }
    }
}
