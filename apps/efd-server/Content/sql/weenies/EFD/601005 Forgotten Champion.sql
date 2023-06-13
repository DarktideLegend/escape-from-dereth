DELETE FROM `weenie` WHERE `class_Id` = 601005;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (601005, 'ace601005-forgottenchampion', 10, '2023-06-11 07:58:50') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (601005,   1,         16) /* ItemType - Creature */
     , (601005,   2,         30) /* CreatureType - Skeleton */
     , (601005,   3,         39) /* PaletteTemplate - Black */
     , (601005,   6,         -1) /* ItemsCapacity */
     , (601005,   7,         -1) /* ContainersCapacity */
     , (601005,  16,          1) /* ItemUseable - No */
     , (601005,  25,        265) /* Level */
     , (601005,  27,          0) /* ArmorType - None */
     , (601005,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (601005,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (601005, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (601005, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (601005, 140,          1) /* AiOptions - CanOpenDoors */
     , (601005, 146,    1400000) /* XpOverride */
     , (601005, 332,         60) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (601005,   1, True ) /* Stuck */
     , (601005,   6, True ) /* AiUsesMana */
     , (601005,  11, False) /* IgnoreCollisions */
     , (601005,  12, True ) /* ReportCollisions */
     , (601005,  13, False) /* Ethereal */
     , (601005,  50, True ) /* NeverFailCasting */
     , (601005,  42003, True ) /* Custom Content */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (601005,   1,       5) /* HeartbeatInterval */
     , (601005,   2,       0) /* HeartbeatTimestamp */
     , (601005,   3, 0.20000000298023224) /* HealthRate */
     , (601005,   4,     0.5) /* StaminaRate */
     , (601005,   5,       2) /* ManaRate */
     , (601005,  12,       0) /* Shade */
     , (601005,  13, 0.8999999761581421) /* ArmorModVsSlash */
     , (601005,  14, 1.2000000476837158) /* ArmorModVsPierce */
     , (601005,  15,       1) /* ArmorModVsBludgeon */
     , (601005,  16, 1.100000023841858) /* ArmorModVsCold */
     , (601005,  17,     1.5) /* ArmorModVsFire */
     , (601005,  18, 1.2000000476837158) /* ArmorModVsAcid */
     , (601005,  19, 1.7000000476837158) /* ArmorModVsElectric */
     , (601005,  27, 5.010000228881836) /* RotationSpeed */
     , (601005,  31,      30) /* VisualAwarenessRange */
     , (601005,  34,       1) /* PowerupTime */
     , (601005,  36,       1) /* ChargeSpeed */
     , (601005,  64,    0.75) /* ResistSlash */
     , (601005,  65, 0.6000000238418579) /* ResistPierce */
     , (601005,  66,       1) /* ResistBludgeon */
     , (601005,  67, 0.8999999761581421) /* ResistFire */
     , (601005,  68, 0.6499999761581421) /* ResistCold */
     , (601005,  69, 0.41999998688697815) /* ResistAcid */
     , (601005,  70, 0.4000000059604645) /* ResistElectric */
     , (601005,  71,       1) /* ResistHealthBoost */
     , (601005,  72,       1) /* ResistStaminaDrain */
     , (601005,  73,       1) /* ResistStaminaBoost */
     , (601005,  74,       1) /* ResistManaDrain */
     , (601005,  75,       1) /* ResistManaBoost */
     , (601005,  80,       4) /* AiUseMagicDelay */
     , (601005, 104,      10) /* ObviousRadarRange */
     , (601005, 122,       2) /* AiAcquireHealth */
     , (601005, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (601005,   1, 'Forgotten Champion') /* Name */
     , (601005,  45, 'Graveyard Skeleton') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (601005,   1,   33560229) /* Setup */
     , (601005,   2,  150994981) /* MotionTable */
     , (601005,   3,  536870942) /* SoundTable */
     , (601005,   4,  805306368) /* CombatTable */
     , (601005,   6,   67116522) /* PaletteBase */
     , (601005,   7,  268437008) /* ClothingBase */
     , (601005,   8,  100669124) /* Icon */
     , (601005,  22,  872415269) /* PhysicsEffectTable */
     , (601005,  35,       1005) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (601005,   1, 322, 0, 0) /* Strength */
     , (601005,   2, 338, 0, 0) /* Endurance */
     , (601005,   3, 415, 0, 0) /* Quickness */
     , (601005,   4, 338, 0, 0) /* Coordination */
     , (601005,   5, 338, 0, 0) /* Focus */
     , (601005,   6, 382, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (601005,   1,  6662, 0, 0, 6831) /* MaxHealth */
     , (601005,   3,  7000, 0, 0, 7338) /* MaxStamina */
     , (601005,   5,  4000, 0, 0, 4382) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (601005,  6, 0, 3, 0, 514, 0, 0) /* MeleeDefense        Specialized */
     , (601005,  7, 0, 3, 0, 361, 0, 0) /* MissileDefense      Specialized */
     , (601005, 15, 0, 3, 0, 320, 0, 0) /* MagicDefense        Specialized */
     , (601005, 20, 0, 3, 0, 120, 0, 0) /* Deception           Specialized */
     , (601005, 33, 0, 3, 0, 230, 0, 0) /* LifeMagic           Specialized */
     , (601005, 34, 0, 3, 0, 230, 0, 0) /* WarMagic            Specialized */
     , (601005, 44, 0, 3, 0, 575, 0, 0) /* HeavyWeapons        Specialized */
     , (601005, 45, 0, 3, 0, 575, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (601005,  0,  4,  0,    0,  445,  401,  534,  445,  490,  668,  534,  757,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (601005,  1,  4,  0,    0,  440,  396,  528,  440,  484,  660,  528,  748,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (601005,  2,  4,  0,    0,  340,  306,  408,  340,  374,  510,  408,  578,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (601005,  3,  4,  0,    0,  435,  392,  522,  435,  479,  653,  522,  740,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (601005,  4,  4,  0,    0,  440,  396,  528,  440,  484,  660,  528,  748,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (601005,  5,  4, 150, 0.75,  350,  315,  420,  350,  385,  525,  420,  595,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (601005,  6,  4,  0,    0,  340,  306,  408,  340,  374,  510,  408,  578,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (601005,  7,  4,  0,    0,  450,  405,  540,  450,  495,  675,  540,  765,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (601005,  8,  4, 155, 0.75,  340,  306,  408,  340,  374,  510,  408,  578,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (601005,  1785,   2.05)  /* Cassius' Ring of Fire */
     , (601005,  2127,   2.05)  /* Silencia's Scorn */
     , (601005,  2128,   2.05)  /* Ilservian's Flame */
     , (601005,  2130,   2.05)  /* Infernae */
     , (601005,  2170,   2.15)  /* Inferno's Gift */
     , (601005,  2745,   2.05)  /* Flame Arc VII */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (601005,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  22 /* StampQuest */, 0, 1, NULL, 'GraveyardSkeletonkillcount@#kt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  22 /* StampQuest */, 0, 1, NULL, 'GameHunterHardTallyFall@#kt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (601005, 2, 35096,  1, 0, 0, False) /* Create Pyre Blade (35096) for Wield */
     , (601005, 2, 52142,  1, 0, 0, False) /* Create Round Shield (52142) for Wield */
     , (601005, 9, 35383,  0, 0, 0.02, False) /* Create Ancient Mhoire Coin (35383) for ContainTreasure */
     , (601005, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (601005, 9, 48908,  0, 0, 0.015, False) /* Create  (48908) for ContainTreasure */
     , (601005, 9,     0,  0, 0, 0.985, False) /* Create nothing for ContainTreasure */
     , (601005, 9, 35504,  0, 0, 0.05, False) /* Create  (35504) for ContainTreasure */
     , (601005, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */
     , (601005, 9, 35105,  1, 0, 1, False) /* Create  (35105) for ContainTreasure */
     , (601005, 9, 38714,  0, 0, 1, False) /* Create  (38714) for ContainTreasure */
     , (601005, 9, 37247,  0, 0, 0.003, False) /* Create  (37247) for ContainTreasure */
     , (601005, 9, 37248,  0, 0, 0.003, False) /* Create  (37248) for ContainTreasure */
     , (601005, 9, 37249,  0, 0, 0.003, False) /* Create  (37249) for ContainTreasure */
     , (601005, 9, 37250,  0, 0, 0.003, False) /* Create  (37250) for ContainTreasure */
     , (601005, 9, 37251,  0, 0, 0.003, False) /* Create  (37251) for ContainTreasure */
     , (601005, 9, 37252,  0, 0, 0.003, False) /* Create  (37252) for ContainTreasure */
     , (601005, 9, 37253,  0, 0, 0.003, False) /* Create  (37253) for ContainTreasure */
     , (601005, 9, 37254,  0, 0, 0.003, False) /* Create  (37254) for ContainTreasure */
     , (601005, 9, 37255,  0, 0, 0.003, False) /* Create  (37255) for ContainTreasure */
     , (601005, 9, 37256,  0, 0, 0.003, False) /* Create  (37256) for ContainTreasure */
     , (601005, 9, 37257,  0, 0, 0.003, False) /* Create  (37257) for ContainTreasure */
     , (601005, 9, 37258,  0, 0, 0.003, False) /* Create  (37258) for ContainTreasure */
     , (601005, 9, 37259,  0, 0, 0.003, False) /* Create  (37259) for ContainTreasure */
     , (601005, 9, 37234,  0, 0, 0.003, False) /* Create  (37234) for ContainTreasure */
     , (601005, 9, 37235,  0, 0, 0.003, False) /* Create  (37235) for ContainTreasure */
     , (601005, 9, 37236,  0, 0, 0.003, False) /* Create  (37236) for ContainTreasure */
     , (601005, 9, 37237,  0, 0, 0.003, False) /* Create  (37237) for ContainTreasure */
     , (601005, 9, 37238,  0, 0, 0.003, False) /* Create  (37238) for ContainTreasure */
     , (601005, 9, 37239,  0, 0, 0.003, False) /* Create  (37239) for ContainTreasure */
     , (601005, 9, 37240,  0, 0, 0.003, False) /* Create  (37240) for ContainTreasure */
     , (601005, 9, 37241,  0, 0, 0.003, False) /* Create  (37241) for ContainTreasure */
     , (601005, 9, 37242,  0, 0, 0.003, False) /* Create  (37242) for ContainTreasure */
     , (601005, 9, 37243,  0, 0, 0.003, False) /* Create  (37243) for ContainTreasure */
     , (601005, 9, 37244,  0, 0, 0.003, False) /* Create  (37244) for ContainTreasure */
     , (601005, 9, 37245,  0, 0, 0.003, False) /* Create  (37245) for ContainTreasure */
     , (601005, 9, 37246,  0, 0, 0.003, False) /* Create  (37246) for ContainTreasure */
     , (601005, 9, 37260,  0, 0, 0.003, False) /* Create  (37260) for ContainTreasure */
     , (601005, 9,     0,  0, 0, 0.919, False) /* Create nothing for ContainTreasure */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-06-11T00:48:26.5886337-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Bone Key drop rate tweak (removing the super long decimal)",
  "IsDone": false
}
*/
