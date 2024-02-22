DELETE FROM `weenie` WHERE `class_Id` = 603003;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (603003, 'ace603003-perfectorenode', 10, '2024-02-20 04:55:51') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (603003,   1,         16) /* ItemType - Creature */
     , (603003,   2,         35) /* CreatureType - OlthoiLarvae */
     , (603003,   3,         14) /* PaletteTemplate - Red */
     , (603003,   6,         -1) /* ItemsCapacity */
     , (603003,   7,         -1) /* ContainersCapacity */
     , (603003,  16,         32) /* ItemUseable - Remote */
     , (603003,  25,         19) /* Level */
     , (603003,  27,          0) /* ArmorType - None */
     , (603003,  40,          1) /* CombatMode - NonCombat */
     , (603003,  67,          1) /* Tolerance - NoAttack */
     , (603003,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (603003, 133,          0) /* ShowableOnRadar - Undefined */
     , (603003, 146,          0) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (603003,   1, True ) /* Stuck */
     , (603003,  11, False) /* IgnoreCollisions */
     , (603003,  12, True ) /* ReportCollisions */
     , (603003,  13, False) /* Ethereal */
     , (603003,  29, False) /* NoCorpse */
     , (603003,  52, True ) /* AiImmobile */
     , (603003,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (603003,  83, True ) /* NpcLooksLikeObject */
     , (603003,  90, True ) /* NpcInteractsSilently */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (603003,   1,       5) /* HeartbeatInterval */
     , (603003,   2,       0) /* HeartbeatTimestamp */
     , (603003,   3, 0.009999999776482582) /* HealthRate */
     , (603003,   4,       4) /* StaminaRate */
     , (603003,   5,       2) /* ManaRate */
     , (603003,  12, 0.800000011920929) /* Shade */
     , (603003,  13, 0.6200000047683716) /* ArmorModVsSlash */
     , (603003,  14, 0.800000011920929) /* ArmorModVsPierce */
     , (603003,  15, 0.6000000238418579) /* ArmorModVsBludgeon */
     , (603003,  16, 0.6200000047683716) /* ArmorModVsCold */
     , (603003,  17, 0.6200000047683716) /* ArmorModVsFire */
     , (603003,  18, 0.3199999928474426) /* ArmorModVsAcid */
     , (603003,  19, 0.10999999940395355) /* ArmorModVsElectric */
     , (603003,  31, 0.30000001192092896) /* VisualAwarenessRange */
     , (603003,  34, 1.2000000476837158) /* PowerupTime */
     , (603003,  36,       1) /* ChargeSpeed */
     , (603003,  39, 1.7000000476837158) /* DefaultScale */
     , (603003,  54,       3) /* UseRadius */
     , (603003,  64,    0.75) /* ResistSlash */
     , (603003,  65,       1) /* ResistPierce */
     , (603003,  66,       1) /* ResistBludgeon */
     , (603003,  67,    0.75) /* ResistFire */
     , (603003,  68,    0.75) /* ResistCold */
     , (603003,  69, 0.41999998688697815) /* ResistAcid */
     , (603003,  70,    0.25) /* ResistElectric */
     , (603003,  71,       1) /* ResistHealthBoost */
     , (603003,  72,       1) /* ResistStaminaDrain */
     , (603003,  73,       1) /* ResistStaminaBoost */
     , (603003,  74,       1) /* ResistManaDrain */
     , (603003,  75,       1) /* ResistManaBoost */
     , (603003, 104,      10) /* ObviousRadarRange */
     , (603003, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (603003,   1, 'Perfect Ore Node') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (603003,   1,   33558339) /* Setup */
     , (603003,   2,  150995239) /* MotionTable */
     , (603003,   3,  536871069) /* SoundTable */
     , (603003,   4,  805306369) /* CombatTable */
     , (603003,   8,  100674306) /* Icon */
     , (603003,  22,  872415265) /* PhysicsEffectTable */
     , (603003,  30,         86) /* PhysicsScript - BreatheAcid */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (603003,   1, 130, 0, 0) /* Strength */
     , (603003,   2, 130, 0, 0) /* Endurance */
     , (603003,   3,  90, 0, 0) /* Quickness */
     , (603003,   4,  90, 0, 0) /* Coordination */
     , (603003,   5,  60, 0, 0) /* Focus */
     , (603003,   6,  30, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (603003,   1,    50, 0, 0, 115) /* MaxHealth */
     , (603003,   3,   150, 0, 0, 280) /* MaxStamina */
     , (603003,   5,     0, 0, 0, 30) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (603003, 32, 0, 3, 0, 200, 0, 702.19189453125) /* ItemEnchantment     Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (603003,  0,  4, 35, 0.75,   90,   56,   72,   54,   56,   56,   29,   10,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (603003, 16,  4,  0,    0,  100,   62,   80,   60,   62,   62,   32,   11,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (603003, 18,  4, 35, 0.75,   90,   56,   72,   54,   56,   56,   29,   10,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (603003, 19,  4, 20,    0,  100,   62,   80,   60,   62,   62,   32,   11,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (603003, 20,  4, 35, 0.75,   90,   56,   72,   54,   56,   56,   29,   10,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (603003, 22, 32, 30,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

/* Lifestoned Changelog:
{
  "LastModified": "2024-02-19T20:56:19.8366289-08:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "<WM>BATCH EDIT - Incremented DID 30 value from: 85 to: 86",
  "IsDone": false
}
*/
