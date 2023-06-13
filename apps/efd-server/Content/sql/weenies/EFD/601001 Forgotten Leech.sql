DELETE FROM `weenie` WHERE `class_Id` = 601001;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (601001, 'ace601001-forgottenleech', 10, '2023-06-11 23:56:34') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (601001,   1,         16) /* ItemType - Creature */
     , (601001,   2,         14) /* CreatureType - Undead */
     , (601001,   3,         13) /* PaletteTemplate - Purple */
     , (601001,   6,         -1) /* ItemsCapacity */
     , (601001,   7,         -1) /* ContainersCapacity */
     , (601001,  16,          1) /* ItemUseable - No */
     , (601001,  25,         80) /* Level */
     , (601001,  27,          0) /* ArmorType - None */
     , (601001,  40,          1) /* CombatMode - NonCombat */
     , (601001,  68,          3) /* TargetingTactic - Random, Focused */
     , (601001,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (601001, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (601001, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (601001, 140,          1) /* AiOptions - CanOpenDoors */
     , (601001, 146,      60000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (601001,   1, True ) /* Stuck */
     , (601001,   6, True ) /* AiUsesMana */
     , (601001,  11, False) /* IgnoreCollisions */
     , (601001,  12, True ) /* ReportCollisions */
     , (601001,  13, False) /* Ethereal */
     , (601001,  14, True ) /* GravityStatus */
     , (601001,  19, True ) /* Attackable */
     , (601001,  50, True ) /* NeverFailCasting */
     , (601001,  42003, True ) /* Custom Content */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (601001,   1,       5) /* HeartbeatInterval */
     , (601001,   2,       0) /* HeartbeatTimestamp */
     , (601001,   3, 0.800000011920929) /* HealthRate */
     , (601001,   4,     0.5) /* StaminaRate */
     , (601001,   5,       2) /* ManaRate */
     , (601001,  12,     0.5) /* Shade */
     , (601001,  13, 0.5299999713897705) /* ArmorModVsSlash */
     , (601001,  14, 0.800000011920929) /* ArmorModVsPierce */
     , (601001,  15, 0.49000000953674316) /* ArmorModVsBludgeon */
     , (601001,  16, 0.12999999523162842) /* ArmorModVsCold */
     , (601001,  17,     0.5) /* ArmorModVsFire */
     , (601001,  18, 0.6800000071525574) /* ArmorModVsAcid */
     , (601001,  19, 0.7300000190734863) /* ArmorModVsElectric */
     , (601001,  31,      18) /* VisualAwarenessRange */
     , (601001,  34,       1) /* PowerupTime */
     , (601001,  36,       1) /* ChargeSpeed */
     , (601001,  39, 1.100000023841858) /* DefaultScale */
     , (601001,  64, 0.5199999809265137) /* ResistSlash */
     , (601001,  65,       1) /* ResistPierce */
     , (601001,  66, 0.46000000834465027) /* ResistBludgeon */
     , (601001,  67,       1) /* ResistFire */
     , (601001,  68, 0.10000000149011612) /* ResistCold */
     , (601001,  69,    0.75) /* ResistAcid */
     , (601001,  70, 0.8600000143051147) /* ResistElectric */
     , (601001,  71,       1) /* ResistHealthBoost */
     , (601001,  72,       1) /* ResistStaminaDrain */
     , (601001,  73,       1) /* ResistStaminaBoost */
     , (601001,  74,       1) /* ResistManaDrain */
     , (601001,  75,       1) /* ResistManaBoost */
     , (601001,  80,       3) /* AiUseMagicDelay */
     , (601001, 104,      10) /* ObviousRadarRange */
     , (601001, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (601001,   1, 'Forgotten Leech') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (601001,   1,   33554839) /* Setup */
     , (601001,   2,  150994967) /* MotionTable */
     , (601001,   3,  536870934) /* SoundTable */
     , (601001,   4,  805306368) /* CombatTable */
     , (601001,   6,   67110722) /* PaletteBase */
     , (601001,   7,  268435558) /* ClothingBase */
     , (601001,   8,  100667942) /* Icon */
     , (601001,  22,  872415272) /* PhysicsEffectTable */
     , (601001,  32,        290) /* WieldedTreasureType - 
                                   Wield 5x Frost Throwing Club (23663) | Probability: 40%
                                   Wield 5x Throwing Club (23655) | Probability: 30.000002%
                                   Wield Yumi (23736) | Probability: 30.000002%
                                   Wield 18x Greater Arrow (5304) | Probability: 100%
                                   Wield Frost Yari (23728) | Probability: 25%
                                   Wield Yari (23732) | Probability: 25%
                                   Wield Frost Spear (23694) | Probability: 15.000001%
                                   Wield Spear (23698) | Probability: 15.000001%
                                   Wield Tachi (23702) | Probability: 20% */
     , (601001,  35,        450) /* DeathTreasureType - Loot Tier: 3 */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (601001,   1, 110, 0, 0) /* Strength */
     , (601001,   2, 120, 0, 0) /* Endurance */
     , (601001,   3, 100, 0, 0) /* Quickness */
     , (601001,   4, 150, 0, 0) /* Coordination */
     , (601001,   5, 185, 0, 0) /* Focus */
     , (601001,   6, 175, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (601001,   1,   240, 0, 0, 300) /* MaxHealth */
     , (601001,   3,   300, 0, 0, 420) /* MaxStamina */
     , (601001,   5,   150, 0, 0, 325) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (601001,  1, 0, 3, 0, 165, 0, 520.9871215820312) /* Axe                 Specialized */
     , (601001,  2, 0, 3, 0, 190, 0, 520.9871215820312) /* Bow                 Specialized */
     , (601001,  3, 0, 3, 0, 190, 0, 520.9871215820312) /* Crossbow            Specialized */
     , (601001,  4, 0, 3, 0, 140, 0, 520.9871215820312) /* Dagger              Specialized */
     , (601001,  5, 0, 3, 0, 165, 0, 520.9871215820312) /* Mace                Specialized */
     , (601001,  6, 0, 3, 0, 140, 0, 520.9871215820312) /* MeleeDefense        Specialized */
     , (601001,  7, 0, 3, 0, 260, 0, 520.9871215820312) /* MissileDefense      Specialized */
     , (601001,  9, 0, 3, 0, 165, 0, 520.9871215820312) /* Spear               Specialized */
     , (601001, 10, 0, 3, 0, 165, 0, 520.9871215820312) /* Staff               Specialized */
     , (601001, 11, 0, 3, 0, 165, 0, 520.9871215820312) /* Sword               Specialized */
     , (601001, 13, 0, 3, 0, 165, 0, 520.9871215820312) /* UnarmedCombat       Specialized */
     , (601001, 14, 0, 3, 0, 250, 0, 520.9871215820312) /* ArcaneLore          Specialized */
     , (601001, 15, 0, 3, 0, 165, 0, 520.9871215820312) /* MagicDefense        Specialized */
     , (601001, 20, 0, 3, 0, 130, 0, 520.9871215820312) /* Deception           Specialized */
     , (601001, 31, 0, 3, 0,  55, 0, 520.9871215820312) /* CreatureEnchantment Specialized */
     , (601001, 33, 0, 3, 0,  55, 0, 520.9871215820312) /* LifeMagic           Specialized */
     , (601001, 34, 0, 3, 0,  55, 0, 520.9871215820312) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (601001,  0,  4,  0,    0,  210,  111,  168,  103,   27,  105,  143,  153,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (601001,  1,  4,  0,    0,  210,  111,  168,  103,   27,  105,  143,  153,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (601001,  2,  4,  0,    0,  210,  111,  168,  103,   27,  105,  143,  153,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (601001,  3,  4,  0,    0,  220,  117,  176,  108,   29,  110,  150,  161,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (601001,  4,  4,  0,    0,  220,  117,  176,  108,   29,  110,  150,  161,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (601001,  5,  4,  2, 0.75,  220,  117,  176,  108,   29,  110,  150,  161,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (601001,  6,  4,  0,    0,  220,  117,  176,  108,   29,  110,  150,  161,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (601001,  7,  4,  0,    0,  220,  117,  176,  108,   29,  110,  150,  161,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (601001,  8,  4,  3, 0.75,  220,  117,  176,  108,   29,  110,  150,  161,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (601001,    61,  2.005)  /* Acid Stream IV */
     , (601001,    67,  2.005)  /* Shock Wave IV */
     , (601001,    72,  2.005)  /* Frost Bolt IV */
     , (601001,    78,  2.005)  /* Lightning Bolt IV */
     , (601001,    83,  2.005)  /* Flame Bolt IV */
     , (601001,    89,  2.005)  /* Force Bolt IV */
     , (601001,    95,  2.005)  /* Whirling Blade IV */
     , (601001,   128,  2.005)  /* Acid Volley IV */
     , (601001,   136,  2.005)  /* Frost Volley IV */
     , (601001,   140,  2.005)  /* Lightning Volley IV */
     , (601001,   144,  2.005)  /* Flame Volley IV */
     , (601001,   174,  2.015)  /* Fester Other IV */
     , (601001,  1159,   2.06)  /* Heal Self IV */
     , (601001,  1240,   2.06)  /* Drain Health Other IV */
     , (601001,  1252,   2.06)  /* Drain Stamina Other IV */
     , (601001,  1263,   2.06)  /* Drain Mana Other IV */
     , (601001,  1325,  2.015)  /* Imperil Other IV */
     , (601001,  1341,  2.015)  /* Weakness Other IV */
     , (601001,  1370,  2.015)  /* Frailty Other IV */
     , (601001,  1394,  2.015)  /* Clumsiness Other IV */
     , (601001,  1418,  2.015)  /* Slowness Other IV */
     , (601001,  1442,  2.015)  /* Bafflement Other IV */
     , (601001,  1466,  2.015)  /* Feeblemind Other IV */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (601001, 9,  5873,  0, 0, 0.01, False) /* Create Seal (5873) for ContainTreasure */
     , (601001, 9,     0,  0, 0, 0.99, False) /* Create nothing for ContainTreasure */
     , (601001, 9,  6876,  0, 0, 0.02, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (601001, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (601001, 9,  7045,  0, 0, 0.03, False) /* Create Dark Revenant Thighbone (7045) for ContainTreasure */
     , (601001, 9,     0,  0, 0, 0.97, False) /* Create nothing for ContainTreasure */
     , (601001, 9,  9310,  0, 0, 0.07, False) /* Create A Large Mnemosyne (9310) for ContainTreasure */
     , (601001, 9,     0,  0, 0, 0.93, False) /* Create nothing for ContainTreasure */
     , (601001, 9, 45876,  1, 0, 0.03, False) /* Create Scarlet Red Letter (45876) for ContainTreasure */
     , (601001, 9,     0,  0, 0, 0.97, False) /* Create nothing for ContainTreasure */
     , (601001, 9, 45875,  1, 0, 0.01, False) /* Create Lucky Gold Letter (45875) for ContainTreasure */
     , (601001, 9,     0,  0, 0, 0.99, False) /* Create nothing for ContainTreasure */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-06-11T16:57:14.3254154-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Removing Seasonal Drops",
  "IsDone": true
}
*/
