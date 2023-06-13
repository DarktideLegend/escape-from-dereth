DELETE FROM `weenie` WHERE `class_Id` = 601003;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (601003, 'ace601003-forgottendemilich', 10, '2023-06-13 00:29:17') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (601003,   1,         16) /* ItemType - Creature */
     , (601003,   2,         14) /* CreatureType - Undead */
     , (601003,   3,          8) /* PaletteTemplate - Green */
     , (601003,   6,         -1) /* ItemsCapacity */
     , (601003,   7,         -1) /* ContainersCapacity */
     , (601003,  16,          1) /* ItemUseable - No */
     , (601003,  25,        135) /* Level */
     , (601003,  27,          0) /* ArmorType - None */
     , (601003,  40,          1) /* CombatMode - NonCombat */
     , (601003,  68,          3) /* TargetingTactic - Random, Focused */
     , (601003,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (601003, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (601003, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (601003, 140,          1) /* AiOptions - CanOpenDoors */
     , (601003, 146,     250000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (601003,   1, True ) /* Stuck */
     , (601003,   6, True ) /* AiUsesMana */
     , (601003,  11, False) /* IgnoreCollisions */
     , (601003,  12, True ) /* ReportCollisions */
     , (601003,  13, False) /* Ethereal */
     , (601003,  14, True ) /* GravityStatus */
     , (601003,  19, True ) /* Attackable */
     , (601003,  50, True ) /* NeverFailCasting */
     , (601003,  42003, True ) /* Custom Content */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (601003,   1,       5) /* HeartbeatInterval */
     , (601003,   2,       0) /* HeartbeatTimestamp */
     , (601003,   3, 0.800000011920929) /* HealthRate */
     , (601003,   4,     0.5) /* StaminaRate */
     , (601003,   5,       2) /* ManaRate */
     , (601003,  12,     0.5) /* Shade */
     , (601003,  13,       1) /* ArmorModVsSlash */
     , (601003,  14,       1) /* ArmorModVsPierce */
     , (601003,  15,       1) /* ArmorModVsBludgeon */
     , (601003,  16,       1) /* ArmorModVsCold */
     , (601003,  17,       1) /* ArmorModVsFire */
     , (601003,  18,       1) /* ArmorModVsAcid */
     , (601003,  19,       1) /* ArmorModVsElectric */
     , (601003,  31,      18) /* VisualAwarenessRange */
     , (601003,  34,       1) /* PowerupTime */
     , (601003,  36,       1) /* ChargeSpeed */
     , (601003,  39, 1.2000000476837158) /* DefaultScale */
     , (601003,  64,    0.75) /* ResistSlash */
     , (601003,  65,     0.5) /* ResistPierce */
     , (601003,  66, 0.699999988079071) /* ResistBludgeon */
     , (601003,  67,    0.75) /* ResistFire */
     , (601003,  68, 0.10000000149011612) /* ResistCold */
     , (601003,  69, 0.699999988079071) /* ResistAcid */
     , (601003,  70,    0.75) /* ResistElectric */
     , (601003,  71,       1) /* ResistHealthBoost */
     , (601003,  72,       1) /* ResistStaminaDrain */
     , (601003,  73,       1) /* ResistStaminaBoost */
     , (601003,  74,       1) /* ResistManaDrain */
     , (601003,  75,       1) /* ResistManaBoost */
     , (601003,  80,       3) /* AiUseMagicDelay */
     , (601003, 104,      10) /* ObviousRadarRange */
     , (601003, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (601003,   1, 'Forgotten Demilich') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (601003,   1,   33554839) /* Setup */
     , (601003,   2,  150994967) /* MotionTable */
     , (601003,   3,  536870934) /* SoundTable */
     , (601003,   4,  805306368) /* CombatTable */
     , (601003,   6,   67110722) /* PaletteBase */
     , (601003,   7,  268436626) /* ClothingBase */
     , (601003,   8,  100667942) /* Icon */
     , (601003,  22,  872415272) /* PhysicsEffectTable */
     , (601003,  32,        203) /* WieldedTreasureType - 
                                   Wield Yumi (23734) | Probability: 20%
                                   Wield 20x Deadly Arrow (15429) | Probability: 100%
                                   Wield Heavy Crossbow (23665) | Probability: 40%
                                   Wield 20x Deadly Quarrel (15438) | Probability: 100%
                                   Wield Katar (23674) | Probability: 12%
                                   Wield Cestus (23637) | Probability: 12%
                                   Wield Nekode (23680) | Probability: 12%
                                   Wield Tachi (23700) | Probability: 12%
                                   Wield Spear (23696) | Probability: 12%
                                   Wield Fire Yaoji (23718) | Probability: 12%
                                   Wield Yaoji (23710) | Probability: 12%
                                   Wield Fire Tachi (23707) | Probability: 12%
                                   Wield Kite Shield (23684) | Probability: 75% */
     , (601003,  35,        452) /* DeathTreasureType - Loot Tier: 5 */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (601003,   1, 150, 0, 0) /* Strength */
     , (601003,   2, 160, 0, 0) /* Endurance */
     , (601003,   3, 140, 0, 0) /* Quickness */
     , (601003,   4, 180, 0, 0) /* Coordination */
     , (601003,   5, 230, 0, 0) /* Focus */
     , (601003,   6, 220, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (601003,   1,   550, 0, 0, 630) /* MaxHealth */
     , (601003,   3,   650, 0, 0, 810) /* MaxStamina */
     , (601003,   5,   420, 0, 0, 640) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (601003,  1, 0, 3, 0, 310, 0, 1668.095703125) /* Axe                 Specialized */
     , (601003,  2, 0, 3, 0, 175, 0, 1668.095703125) /* Bow                 Specialized */
     , (601003,  3, 0, 3, 0, 175, 0, 1668.095703125) /* Crossbow            Specialized */
     , (601003,  4, 0, 3, 0, 300, 0, 1668.095703125) /* Dagger              Specialized */
     , (601003,  5, 0, 3, 0, 310, 0, 1668.095703125) /* Mace                Specialized */
     , (601003,  6, 0, 3, 0, 330, 0, 1668.095703125) /* MeleeDefense        Specialized */
     , (601003,  7, 0, 3, 0, 435, 0, 1668.095703125) /* MissileDefense      Specialized */
     , (601003,  9, 0, 3, 0, 310, 0, 1668.095703125) /* Spear               Specialized */
     , (601003, 10, 0, 3, 0, 310, 0, 1668.095703125) /* Staff               Specialized */
     , (601003, 11, 0, 3, 0, 310, 0, 1668.095703125) /* Sword               Specialized */
     , (601003, 13, 0, 3, 0, 310, 0, 1668.095703125) /* UnarmedCombat       Specialized */
     , (601003, 14, 0, 3, 0, 240, 0, 1668.095703125) /* ArcaneLore          Specialized */
     , (601003, 15, 0, 3, 0, 275, 0, 1668.095703125) /* MagicDefense        Specialized */
     , (601003, 20, 0, 3, 0, 120, 0, 1668.095703125) /* Deception           Specialized */
     , (601003, 31, 0, 3, 0, 180, 0, 1668.095703125) /* CreatureEnchantment Specialized */
     , (601003, 33, 0, 3, 0, 180, 0, 1668.095703125) /* LifeMagic           Specialized */
     , (601003, 34, 0, 3, 0, 180, 0, 1668.095703125) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (601003,  0,  4,  0,    0,  475,  475,  475,  475,  475,  475,  475,  475,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (601003,  1,  4,  0,    0,  475,  475,  475,  475,  475,  475,  475,  475,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (601003,  2,  4,  0,    0,  475,  475,  475,  475,  475,  475,  475,  475,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (601003,  3,  4,  0,    0,  475,  475,  475,  475,  475,  475,  475,  475,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (601003,  4,  4,  0,    0,  475,  475,  475,  475,  475,  475,  475,  475,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (601003,  5,  4, 100, 0.75,  475,  475,  475,  475,  475,  475,  475,  475,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (601003,  6,  4,  0,    0,  475,  475,  475,  475,  475,  475,  475,  475,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (601003,  7,  4,  0,    0,  475,  475,  475,  475,  475,  475,  475,  475,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (601003,  8,  4, 100, 0.75,  475,  475,  475,  475,  475,  475,  475,  475,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (601003,    63,   2.01)  /* Acid Stream VI */
     , (601003,    69,   2.01)  /* Shock Wave VI */
     , (601003,    74,   2.01)  /* Frost Bolt VI */
     , (601003,    80,   2.01)  /* Lightning Bolt VI */
     , (601003,    85,   2.01)  /* Flame Bolt VI */
     , (601003,    91,   2.01)  /* Force Bolt VI */
     , (601003,    97,   2.01)  /* Whirling Blade VI */
     , (601003,   130,   2.01)  /* Acid Volley VI */
     , (601003,   138,   2.01)  /* Frost Volley VI */
     , (601003,   142,   2.01)  /* Lightning Volley VI */
     , (601003,   146,   2.01)  /* Flame Volley VI */
     , (601003,   169,  2.025)  /* Regeneration Self V */
     , (601003,   176,  2.011)  /* Fester Other VI */
     , (601003,  1241,  2.025)  /* Drain Health Other V */
     , (601003,  1253,  2.025)  /* Drain Stamina Other V */
     , (601003,  1264,  2.025)  /* Drain Mana Other V */
     , (601003,  1327,  2.011)  /* Imperil Other VI */
     , (601003,  1343,  2.011)  /* Weakness Other VI */
     , (601003,  1372,  2.011)  /* Frailty Other VI */
     , (601003,  1396,  2.011)  /* Clumsiness Other VI */
     , (601003,  1420,  2.011)  /* Slowness Other VI */
     , (601003,  1444,  2.011)  /* Bafflement Other VI */
     , (601003,  1468,  2.011)  /* Feeblemind Other VI */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (601003, 9,  6876,  0, 0, 0.02, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (601003, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (601003, 9,  9310,  0, 0, 0.05, False) /* Create A Large Mnemosyne (9310) for ContainTreasure */
     , (601003, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */
     , (601003, 9, 24477,  0, 0, 0.02, False) /* Create Sturdy Steel Key (24477) for ContainTreasure */
     , (601003, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-06-12T17:29:58.2443438-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Removing Int307 from Weenie.",
  "IsDone": true
}
*/
