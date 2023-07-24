using ACE.Common;
using ACE.Database;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Entity.Models;
using ACE.Server.Entity;
using ACE.Server.Entity.Actions;
using ACE.Server.EscapeFromDereth.Common;
using ACE.Server.EscapeFromDereth.Hellgates.Entity;
using ACE.Server.EscapeFromDereth.Towns.Data;
using ACE.Server.EscapeFromDereth.Towns.Entity;
using ACE.Server.Factories;
using ACE.Server.Managers;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.Realms;
using ACE.Server.WorldObjects;
using log4net;
using log4net.Util;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.EscapeFromDereth.Towns
{
    // This should probably be moved to ACE.Server/Managers
    public class TownManager
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public readonly static Dictionary<string, Town> Towns = new Dictionary<string, Town>();

        private static List<Town> TownsList = new List<Town>();

        private static TimeSpan TownTimer = TimeSpan.FromMinutes(15);

        private static TownRepository TownRepo = new TownRepository();

        public static readonly Position TownMeetingHallLocation = EFDHelpers.slocToPosition("0x011F0126 [30.000000 -60.000000 6.000000] 1.000000 0.000000 0.000000 0.000000 0");
        public static readonly Position TownMeetingHallBossLocation = EFDHelpers.slocToPosition("0x011F010D [28.415749 -24.232437 0.005000] -0.943849 0.000000 0.000000 -0.330377 0");

        private static readonly Dictionary<uint, MeetingHall> MeetingHalls = new Dictionary<uint, MeetingHall>();

        public static void Initialize()
        {
            var towns = TownRepo.GetAllTowns();

            foreach (var town in towns)
            {
                Towns.Add(town.Name, town);
                TownsList.Add(town);
            }
        }

        private static Town GetTownByName(string name)
        {
            return Towns.Values.Where(town => town.Name == name).FirstOrDefault();
        }

        public static void UpdateTownOwnership(string name, uint allegianceId)
        {
            var town = GetTownByName(name);
            town.SetOwnership(allegianceId, Time.GetUnixTime() + TownTimer.TotalSeconds);
            TownRepo.UpdateTown(town);
        }

        public static void UpdateTownTaxRate(string name, float taxRate)
        {
            var town = GetTownByName(name);
            town.SetTaxRate(taxRate);
            TownRepo.UpdateTown(town);
        }

        public static Town GetRandomTown()
        {
            var random = ThreadSafeRandom.Next(0, TownsList.Count - 1);
            return TownsList[random];
        }

        public static Town GetClosestTownFromPosition(Position position)
        {
            return TownsList.Aggregate((previous, next) =>
            {
                if (previous.Location.DistanceTo(position) <= next.Location.DistanceTo(position))
                    return previous;
                else
                    return next;
            });
        }

        public static int GetMonsterTierByDistance(Position location)
        {
            var distance = GetTownDistance(location);

            if (distance <= 3750)
                return 1;
            if (distance <= 7500)
                return 2;
            if (distance <= 15000)
                return 3;
            if (distance <= 30000)
                return 4;

            return 5;
        }

        public static float GetTownDistance(Position location)
        {
            var town = GetClosestTownFromPosition(location);
            var distance = town.Location.DistanceTo(location);
            return distance;
        }

        internal static uint CreateMeetingHall(Town town, Player player, List<Realm> rules)
        {
            var realm = RealmManager.GetNewEphemeralLandblock(TownMeetingHallLocation.LandblockId, player, rules, true);
            town.MeetingHallInstance = realm.Instance;

            var meetingHall = new MeetingHall(realm.Instance, town);
            MeetingHalls.TryAdd(realm.Instance, meetingHall);

            var boss = WorldObjectFactory.CreateNewWorldObject(4000226); // Darkbeat temporarily 
            if (boss != null)
            {
                boss.Location = new Position(TownMeetingHallBossLocation);
                boss.Location.Instance = realm.Instance;
                boss.Lifespan = int.MaxValue;
                boss.EnterWorld();
            }

            return realm.Instance;
        }

        public static void CleanupMeetingHall(uint instance)
        {
            if (MeetingHalls.TryGetValue(instance, out var meetingHall))
            {
                if (meetingHall != null)
                {
                    foreach (var player in meetingHall.Players)
                    {
                        player.ExitInstance();
                    }


                    var actionChain = new ActionChain();
                    actionChain.AddDelaySeconds(60); // give enough time for meeting hall to be destroyed
                    actionChain.AddAction(WorldManager.ActionQueue, () =>
                    {
                        var lb = LandblockManager.GetLandblockUnsafe(TownMeetingHallLocation.LandblockId, meetingHall.Instance);
                        if (lb != null)
                            LandblockManager.AddToDestructionQueue(lb);
                        MeetingHalls.Remove(instance);
                        meetingHall.Destroy();
                    });
                    actionChain.EnqueueChain();

                }

            }
        }

        internal static bool AddPlayerToMeetingHall(Player player, uint instance)
        {
            if (MeetingHalls.TryGetValue(instance, out var meetingHall))
            {
                if (meetingHall != null)
                {
                    meetingHall.AddPlayer(player);
                    var message = $"Player {player.Name} has entered the {meetingHall.Town.Name} Town Meeting Hall";
                    log.Info(message);
                    PlayerManager.BroadcastToAll(new GameMessageSystemChat(message, ChatMessageType.WorldBroadcast));
                    return true;
                }
            }

            return false;
        }
        internal static bool RemovePlayerFromMeetingHall(Player player, uint instance)
        {
            if (MeetingHalls.TryGetValue(instance, out var meetingHall))
            {
                if (meetingHall != null)
                {
                    meetingHall.RemovePlayer(player);
                    player.MeetingHallExpiration = Time.GetUnixTime() + TimeSpan.FromMinutes(15).TotalSeconds; // 15 minute waiting period
                    var message = $"Player {player.Name} has left the {meetingHall.Town.Name} Town Meeting Hall";
                    log.Info(message);
                    return true;
                }
            }

            return false;
        }


    }
}
