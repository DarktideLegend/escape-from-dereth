DELETE FROM `weenie` WHERE `class_Id` = 603002;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (603002, 'ace603002-greaterorenode', 10, '2024-02-20 04:55:51') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (603002,   1,         16) /* ItemType - Creature */
     , (603002,   2,         35) /* CreatureType - OlthoiLarvae */
     , (603002,   3,         14) /* PaletteTemplate - Red */
     , (603002,   6,         -1) /* ItemsCapacity */
     , (603002,   7,         -1) /* ContainersCapacity */
     , (603002,  16,         32) /* ItemUseable - Remote */
     , (603002,  25,         19) /* Level */
     , (603002,  27,          0) /* ArmorType - None */
     , (603002,  40,          1) /* CombatMode - NonCombat */
     , (603002,  67,          1) /* Tolerance - NoAttack */
     , (603002,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (603002, 133,          0) /* ShowableOnRadar - Undefined */
     , (603002, 146,          0) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (603002,   1, True ) /* Stuck */
     , (603002,  11, False) /* IgnoreCollisions */
     , (603002,  12, True ) /* ReportCollisions */
     , (603002,  13, False) /* Ethereal */
     , (603002,  29, False) /* NoCorpse */
     , (603002,  52, True ) /* AiImmobile */
     , (603002,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (603002,  83, True ) /* NpcLooksLikeObject */
     , (603002,  90, True ) /* NpcInteractsSilently */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (603002,   1,       5) /* HeartbeatInterval */
     , (603002,   2,       0) /* HeartbeatTimestamp */
     , (603002,   3, 0.009999999776482582) /* HealthRate */
     , (603002,   4,       4) /* StaminaRate */
     , (603002,   5,       2) /* ManaRate */
     , (603002,  12, 0.800000011920929) /* Shade */
     , (603002,  13, 0.6200000047683716) /* ArmorModVsSlash */
     , (603002,  14, 0.800000011920929) /* ArmorModVsPierce */
     , (603002,  15, 0.6000000238418579) /* ArmorModVsBludgeon */
     , (603002,  16, 0.6200000047683716) /* ArmorModVsCold */
     , (603002,  17, 0.6200000047683716) /* ArmorModVsFire */
     , (603002,  18, 0.3199999928474426) /* ArmorModVsAcid */
     , (603002,  19, 0.10999999940395355) /* ArmorModVsElectric */
     , (603002,  31, 0.30000001192092896) /* VisualAwarenessRange */
     , (603002,  34, 1.2000000476837158) /* PowerupTime */
     , (603002,  36,       1) /* ChargeSpeed */
     , (603002,  39, 1.350000023841858) /* DefaultScale */
     , (603002,  54,       3) /* UseRadius */
     , (603002,  64,    0.75) /* ResistSlash */
     , (603002,  65,       1) /* ResistPierce */
     , (603002,  66,       1) /* ResistBludgeon */
     , (603002,  67,    0.75) /* ResistFire */
     , (603002,  68,    0.75) /* ResistCold */
     , (603002,  69, 0.41999998688697815) /* ResistAcid */
     , (603002,  70,    0.25) /* ResistElectric */
     , (603002,  71,       1) /* ResistHealthBoost */
     , (603002,  72,       1) /* ResistStaminaDrain */
     , (603002,  73,       1) /* ResistStaminaBoost */
     , (603002,  74,       1) /* ResistManaDrain */
     , (603002,  75,       1) /* ResistManaBoost */
     , (603002, 104,      10) /* ObviousRadarRange */
     , (603002, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (603002,   1, 'Greater Ore Node') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (603002,   1,   33558339) /* Setup */
     , (603002,   2,  150995239) /* MotionTable */
     , (603002,   3,  536871069) /* SoundTable */
     , (603002,   4,  805306369) /* CombatTable */
     , (603002,   8,  100674306) /* Icon */
     , (603002,  22,  872415265) /* PhysicsEffectTable */
     , (603002,  30,         86) /* PhysicsScript - BreatheAcid */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (603002,   1, 130, 0, 0) /* Strength */
     , (603002,   2, 130, 0, 0) /* Endurance */
     , (603002,   3,  90, 0, 0) /* Quickness */
     , (603002,   4,  90, 0, 0) /* Coordination */
     , (603002,   5,  60, 0, 0) /* Focus */
     , (603002,   6,  30, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (603002,   1,    50, 0, 0, 115) /* MaxHealth */
     , (603002,   3,   150, 0, 0, 280) /* MaxStamina */
     , (603002,   5,     0, 0, 0, 30) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (603002, 32, 0, 3, 0, 200, 0, 702.19189453125) /* ItemEnchantment     Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (603002,  0,  4, 35, 0.75,   90,   56,   72,   54,   56,   56,   29,   10,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (603002, 16,  4,  0,    0,  100,   62,   80,   60,   62,   62,   32,   11,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (603002, 18,  4, 35, 0.75,   90,   56,   72,   54,   56,   56,   29,   10,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (603002, 19,  4, 20,    0,  100,   62,   80,   60,   62,   62,   32,   11,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (603002, 20,  4, 35, 0.75,   90,   56,   72,   54,   56,   56,   29,   10,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (603002, 22, 32, 30,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

/* Lifestoned Changelog:
{
  "LastModified": "2024-02-19T20:56:43.4447324-08:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "<WM>BATCH EDIT - Incremented DID 30 value from: 85 to: 86",
  "IsDone": false
}
*/
