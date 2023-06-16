DELETE FROM `weenie` WHERE `class_Id` = 601002;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (601002, 'ace601002-forgottenrevenant', 10, '2023-06-13 00:22:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (601002,   1,         16) /* ItemType - Creature */
     , (601002,   2,         14) /* CreatureType - Undead */
     , (601002,   3,         70) /* PaletteTemplate - PurpleSlime */
     , (601002,   6,         -1) /* ItemsCapacity */
     , (601002,   7,         -1) /* ContainersCapacity */
     , (601002,  16,          1) /* ItemUseable - No */
     , (601002,  25,        115) /* Level */
     , (601002,  27,          0) /* ArmorType - None */
     , (601002,  40,          1) /* CombatMode - NonCombat */
     , (601002,  68,          3) /* TargetingTactic - Random, Focused */
     , (601002,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (601002, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (601002, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (601002, 140,          1) /* AiOptions - CanOpenDoors */
     , (601002, 146,     125000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (601002,   1, True ) /* Stuck */
     , (601002,  11, False) /* IgnoreCollisions */
     , (601002,  12, True ) /* ReportCollisions */
     , (601002,  13, False) /* Ethereal */
     , (601002,  14, True ) /* GravityStatus */
     , (601002,  19, True ) /* Attackable */
     , (601002,  42, True ) /* AllowEdgeSlide */
     , (601002,  42003, True ) /* Custom Content */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (601002,   1,       5) /* HeartbeatInterval */
     , (601002,   2,       0) /* HeartbeatTimestamp */
     , (601002,   3, 0.800000011920929) /* HealthRate */
     , (601002,   4,     0.5) /* StaminaRate */
     , (601002,   5,       2) /* ManaRate */
     , (601002,  12,     0.5) /* Shade */
     , (601002,  13,       1) /* ArmorModVsSlash */
     , (601002,  14,       1) /* ArmorModVsPierce */
     , (601002,  15,       1) /* ArmorModVsBludgeon */
     , (601002,  16,       1) /* ArmorModVsCold */
     , (601002,  17,       1) /* ArmorModVsFire */
     , (601002,  18,       1) /* ArmorModVsAcid */
     , (601002,  19,       1) /* ArmorModVsElectric */
     , (601002,  31,      18) /* VisualAwarenessRange */
     , (601002,  34,       1) /* PowerupTime */
     , (601002,  36,       1) /* ChargeSpeed */
     , (601002,  39, 1.149999976158142) /* DefaultScale */
     , (601002,  64, 0.550000011920929) /* ResistSlash */
     , (601002,  65, 0.44999998807907104) /* ResistPierce */
     , (601002,  66, 0.699999988079071) /* ResistBludgeon */
     , (601002,  67, 0.699999988079071) /* ResistFire */
     , (601002,  68, 0.10000000149011612) /* ResistCold */
     , (601002,  69, 0.699999988079071) /* ResistAcid */
     , (601002,  70, 0.550000011920929) /* ResistElectric */
     , (601002,  71,       1) /* ResistHealthBoost */
     , (601002,  72,       1) /* ResistStaminaDrain */
     , (601002,  73,       1) /* ResistStaminaBoost */
     , (601002,  74,       1) /* ResistManaDrain */
     , (601002,  75,       1) /* ResistManaBoost */
     , (601002, 104,      10) /* ObviousRadarRange */
     , (601002, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (601002,   1, 'Forgotten Revenant') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (601002,   1,   33558541) /* Setup */
     , (601002,   2,  150994967) /* MotionTable */
     , (601002,   3,  536870934) /* SoundTable */
     , (601002,   4,  805306368) /* CombatTable */
     , (601002,   6,   67114692) /* PaletteBase */
     , (601002,   7,  268436726) /* ClothingBase */
     , (601002,   8,  100667942) /* Icon */
     , (601002,  22,  872415272) /* PhysicsEffectTable */
     , (601002,  32,        199) /* WieldedTreasureType - 
                                   Wield Yumi (23733) | Probability: 6%
                                   Wield 20x Deadly Armor Piercing Arrow (15431) | Probability: 100%
                                   Wield Yumi (23733) | Probability: 6%
                                   Wield 17x Deadly Arrow (15429) | Probability: 100%
                                   Wield Heavy Crossbow (23664) | Probability: 6%
                                   Wield 20x Deadly Quarrel (15438) | Probability: 100%
                                   Wield Heavy Crossbow (23664) | Probability: 6%
                                   Wield 16x Deadly Armor Piercing Quarrel (15440) | Probability: 100%
                                   Wield Yumi (23733) | Probability: 6%
                                   Wield 20x Deadly Broadhead Arrow (15433) | Probability: 100%
                                   Wield Yumi (23733) | Probability: 6%
                                   Wield 17x Deadly Blunt Arrow (15432) | Probability: 100%
                                   Wield Heavy Crossbow (23664) | Probability: 6%
                                   Wield 20x Deadly Broadhead Quarrel (15442) | Probability: 100%
                                   Wield Heavy Crossbow (23664) | Probability: 6%
                                   Wield 16x Deadly Blunt Quarrel (15441) | Probability: 100%
                                   Wield Katar (23673) | Probability: 12%
                                   Wield Cestus (23636) | Probability: 12%
                                   Wield Nekode (23679) | Probability: 12%
                                   Wield Tachi (23699) | Probability: 12%
                                   Wield Spear (23695) | Probability: 12%
                                   Wield Fire Yaoji (23717) | Probability: 12%
                                   Wield Yaoji (23709) | Probability: 12%
                                   Wield Fire Tachi (23706) | Probability: 12%
                                   Wield Kite Shield (23683) | Probability: 75% */
     , (601002,  35,        452) /* DeathTreasureType - Loot Tier: 5 */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (601002,   1, 180, 0, 0) /* Strength */
     , (601002,   2, 150, 0, 0) /* Endurance */
     , (601002,   3, 130, 0, 0) /* Quickness */
     , (601002,   4, 180, 0, 0) /* Coordination */
     , (601002,   5, 190, 0, 0) /* Focus */
     , (601002,   6, 180, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (601002,   1,   510, 0, 0, 585) /* MaxHealth */
     , (601002,   3,   560, 0, 0, 710) /* MaxStamina */
     , (601002,   5,   340, 0, 0, 520) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (601002,  1, 0, 3, 0, 300, 0, 1668.2232666015625) /* Axe                 Specialized */
     , (601002,  2, 0, 3, 0, 160, 0, 1668.2232666015625) /* Bow                 Specialized */
     , (601002,  3, 0, 3, 0, 160, 0, 1668.2232666015625) /* Crossbow            Specialized */
     , (601002,  4, 0, 3, 0, 300, 0, 1668.2232666015625) /* Dagger              Specialized */
     , (601002,  5, 0, 3, 0, 300, 0, 1668.2232666015625) /* Mace                Specialized */
     , (601002,  6, 0, 3, 0, 325, 0, 1668.2232666015625) /* MeleeDefense        Specialized */
     , (601002,  7, 0, 3, 0, 430, 0, 1668.2232666015625) /* MissileDefense      Specialized */
     , (601002,  9, 0, 3, 0, 300, 0, 1668.2232666015625) /* Spear               Specialized */
     , (601002, 10, 0, 3, 0, 300, 0, 1668.2232666015625) /* Staff               Specialized */
     , (601002, 11, 0, 3, 0, 300, 0, 1668.2232666015625) /* Sword               Specialized */
     , (601002, 13, 0, 3, 0, 300, 0, 1668.2232666015625) /* UnarmedCombat       Specialized */
     , (601002, 14, 0, 0, 0, 150, 0, 1668.2232666015625) /* ArcaneLore          Inactive */
     , (601002, 15, 0, 3, 0, 295, 0, 1668.2232666015625) /* MagicDefense        Specialized */
     , (601002, 20, 0, 0, 0, 120, 0, 1668.2232666015625) /* Deception           Inactive */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (601002,  0,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (601002,  1,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (601002,  2,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (601002,  3,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (601002,  4,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (601002,  5,  4, 90, 0.75,  450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (601002,  6,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (601002,  7,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (601002,  8,  4, 90, 0.75,  450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (601002, 9,  6876,  0, 0, 0.02, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (601002, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (601002, 9,  9310,  0, 0, 0.05, False) /* Create A Large Mnemosyne (9310) for ContainTreasure */
     , (601002, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */
     , (601002, 9, 24477,  0, 0, 0.02, False) /* Create Sturdy Steel Key (24477) for ContainTreasure */
     , (601002, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (601002, 9,  7045,  0, 0, 0.04, False) /* Create Dark Revenant Thighbone (7045) for ContainTreasure */
     , (601002, 9,     0,  0, 0, 0.96, False) /* Create nothing for ContainTreasure */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-06-12T11:44:07.7284505-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Removing Seasonal Drops",
  "IsDone": true
}
*/
