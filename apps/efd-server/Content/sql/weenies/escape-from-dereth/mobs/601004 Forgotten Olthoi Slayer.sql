DELETE FROM `weenie` WHERE `class_Id` = 601004;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (601004, 'ace601004-forgottenolthoislayer', 10, '2023-06-13 00:38:22') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (601004,   1,         16) /* ItemType - Creature */
     , (601004,   2,          1) /* CreatureType - Olthoi */
     , (601004,   3,         82) /* PaletteTemplate - PinkPurple */
     , (601004,   6,        255) /* ItemsCapacity */
     , (601004,   7,        255) /* ContainersCapacity */
     , (601004,  16,          1) /* ItemUseable - No */
     , (601004,  25,        185) /* Level */
     , (601004,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (601004, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (601004, 140,          1) /* AiOptions - CanOpenDoors */
     , (601004, 146,     800000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (601004,   1, True ) /* Stuck */
     , (601004,  12, True ) /* ReportCollisions */
     , (601004,  14, True ) /* GravityStatus */
     , (601004,  19, True ) /* Attackable */
     , (601004, 103, True ) /* NonProjectileMagicImmune */
     , (601004,  42003, True ) /* Custom Content */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (601004,   1,       5) /* HeartbeatInterval */
     , (601004,   2,       0) /* HeartbeatTimestamp */
     , (601004,   3, 0.699999988079071) /* HealthRate */
     , (601004,   4,       4) /* StaminaRate */
     , (601004,   5,       2) /* ManaRate */
     , (601004,  12,     0.5) /* Shade */
     , (601004,  13, 0.6899999976158142) /* ArmorModVsSlash */
     , (601004,  14, 0.800000011920929) /* ArmorModVsPierce */
     , (601004,  15, 0.6000000238418579) /* ArmorModVsBludgeon */
     , (601004,  16,       1) /* ArmorModVsCold */
     , (601004,  17,       1) /* ArmorModVsFire */
     , (601004,  18, 1.100000023841858) /* ArmorModVsAcid */
     , (601004,  19,       1) /* ArmorModVsElectric */
     , (601004,  31,      24) /* VisualAwarenessRange */
     , (601004,  34,     0.5) /* PowerupTime */
     , (601004,  36,       1) /* ChargeSpeed */
     , (601004,  39, 1.100000023841858) /* DefaultScale */
     , (601004,  64,    0.75) /* ResistSlash */
     , (601004,  65,       1) /* ResistPierce */
     , (601004,  66,       1) /* ResistBludgeon */
     , (601004,  67,    0.75) /* ResistFire */
     , (601004,  68,    0.75) /* ResistCold */
     , (601004,  69, 0.41999998688697815) /* ResistAcid */
     , (601004,  70,    0.25) /* ResistElectric */
     , (601004,  71,    0.25) /* ResistHealthBoost */
     , (601004,  72,    0.25) /* ResistStaminaDrain */
     , (601004,  73,    0.25) /* ResistStaminaBoost */
     , (601004,  74,    0.25) /* ResistManaDrain */
     , (601004,  75,    0.25) /* ResistManaBoost */
     , (601004,  77,       1) /* PhysicsScriptIntensity */
     , (601004, 104,      10) /* ObviousRadarRange */
     , (601004, 117, 0.6000000238418579) /* FocusedProbability */
     , (601004, 125,    0.25) /* ResistHealthDrain */
     , (601004, 151,       1) /* IgnoreShield */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (601004,   1, 'Forgotten Olthoi Slayer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (601004,   1,   33557164) /* Setup */
     , (601004,   2,  150994946) /* MotionTable */
     , (601004,   3,  536870925) /* SoundTable */
     , (601004,   4,  805306395) /* CombatTable */
     , (601004,   6,   67113236) /* PaletteBase */
     , (601004,   7,  268436196) /* ClothingBase */
     , (601004,   8,  100667623) /* Icon */
     , (601004,  22,  872415265) /* PhysicsEffectTable */
     , (601004,  30,         86) /* PhysicsScript - BreatheAcid */
     , (601004,  35,       1000) /* DeathTreasureType - Loot Tier: 7 */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (601004,   1, 370, 0, 0) /* Strength */
     , (601004,   2, 370, 0, 0) /* Endurance */
     , (601004,   3, 210, 0, 0) /* Quickness */
     , (601004,   4, 210, 0, 0) /* Coordination */
     , (601004,   5, 160, 0, 0) /* Focus */
     , (601004,   6, 120, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (601004,   1,  2115, 0, 0, 2300) /* MaxHealth */
     , (601004,   3,  4200, 0, 0, 4570) /* MaxStamina */
     , (601004,   5,     0, 0, 0, 120) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (601004,  6, 0, 3, 0, 513, 0, 0) /* MeleeDefense        Specialized */
     , (601004,  7, 0, 3, 0, 273, 0, 0) /* MissileDefense      Specialized */
     , (601004, 15, 0, 3, 0, 260, 0, 0) /* MagicDefense        Specialized */
     , (601004, 20, 0, 2, 0,  50, 0, 0) /* Deception           Trained */
     , (601004, 22, 0, 2, 0, 200, 0, 0) /* Jump                Trained */
     , (601004, 24, 0, 2, 0, 190, 0, 0) /* Run                 Trained */
     , (601004, 45, 0, 3, 0, 452, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (601004,  0,  4,  0,    0,  350,  242,  280,  210,  350,  350,  385,  350,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (601004, 16,  4,  0,    0,  350,  242,  280,  210,  350,  350,  385,  350,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (601004, 18,  1, 200, 0.75,  350,  242,  280,  210,  350,  350,  385,  350,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (601004, 19,  4,  0,    0,  350,  242,  280,  210,  350,  350,  385,  350,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (601004, 20,  2, 200, 0.75,  350,  242,  280,  210,  350,  350,  385,  350,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (601004, 22, 32, 180,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (601004,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  22 /* StampQuest */, 0, 1, NULL, 'GameHunterExtremeTally8@#kt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (601004,  5 /* HeartBeat */,   0.85, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (601004,  5 /* HeartBeat */,   0.85, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (601004, 9, 31352,  0, 0, 0.045, False) /* Create Olthoi Slayer Carapace (31352) for ContainTreasure */
     , (601004, 9,     0,  0, 0, 0.955, False) /* Create nothing for ContainTreasure */
     , (601004, 9, 24477,  0, 0, 0.03, False) /* Create Sturdy Steel Key (24477) for ContainTreasure */
     , (601004, 9,     0,  0, 0, 0.97, False) /* Create nothing for ContainTreasure */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-06-12T17:38:18.3677226-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Monthly Game Hunter KT",
  "IsDone": false
}
*/
