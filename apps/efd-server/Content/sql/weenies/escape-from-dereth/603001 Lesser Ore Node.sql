DELETE FROM `weenie` WHERE `class_Id` = 603001;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (603001, 'ace603001-lesserorenode', 10, '2024-02-20 04:55:51') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (603001,   1,         16) /* ItemType - Creature */
     , (603001,   2,         35) /* CreatureType - OlthoiLarvae */
     , (603001,   3,         14) /* PaletteTemplate - Red */
     , (603001,   6,         -1) /* ItemsCapacity */
     , (603001,   7,         -1) /* ContainersCapacity */
     , (603001,  16,         32) /* ItemUseable - Remote */
     , (603001,  25,         19) /* Level */
     , (603001,  27,          0) /* ArmorType - None */
     , (603001,  40,          1) /* CombatMode - NonCombat */
     , (603001,  67,          1) /* Tolerance - NoAttack */
     , (603001,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (603001, 133,          0) /* ShowableOnRadar - Undefined */
     , (603001, 146,          0) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (603001,   1, True ) /* Stuck */
     , (603001,  11, False) /* IgnoreCollisions */
     , (603001,  12, True ) /* ReportCollisions */
     , (603001,  13, False) /* Ethereal */
     , (603001,  29, False) /* NoCorpse */
     , (603001,  52, True ) /* AiImmobile */
     , (603001,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (603001,  83, True ) /* NpcLooksLikeObject */
     , (603001,  90, True ) /* NpcInteractsSilently */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (603001,   1,       5) /* HeartbeatInterval */
     , (603001,   2,       0) /* HeartbeatTimestamp */
     , (603001,   3, 0.009999999776482582) /* HealthRate */
     , (603001,   4,       4) /* StaminaRate */
     , (603001,   5,       2) /* ManaRate */
     , (603001,  12, 0.800000011920929) /* Shade */
     , (603001,  13, 0.6200000047683716) /* ArmorModVsSlash */
     , (603001,  14, 0.800000011920929) /* ArmorModVsPierce */
     , (603001,  15, 0.6000000238418579) /* ArmorModVsBludgeon */
     , (603001,  16, 0.6200000047683716) /* ArmorModVsCold */
     , (603001,  17, 0.6200000047683716) /* ArmorModVsFire */
     , (603001,  18, 0.3199999928474426) /* ArmorModVsAcid */
     , (603001,  19, 0.10999999940395355) /* ArmorModVsElectric */
     , (603001,  31, 0.30000001192092896) /* VisualAwarenessRange */
     , (603001,  34, 1.2000000476837158) /* PowerupTime */
     , (603001,  36,       1) /* ChargeSpeed */
     , (603001,  39,       1) /* DefaultScale */
     , (603001,  54,       3) /* UseRadius */
     , (603001,  64,    0.75) /* ResistSlash */
     , (603001,  65,       1) /* ResistPierce */
     , (603001,  66,       1) /* ResistBludgeon */
     , (603001,  67,    0.75) /* ResistFire */
     , (603001,  68,    0.75) /* ResistCold */
     , (603001,  69, 0.41999998688697815) /* ResistAcid */
     , (603001,  70,    0.25) /* ResistElectric */
     , (603001,  71,       1) /* ResistHealthBoost */
     , (603001,  72,       1) /* ResistStaminaDrain */
     , (603001,  73,       1) /* ResistStaminaBoost */
     , (603001,  74,       1) /* ResistManaDrain */
     , (603001,  75,       1) /* ResistManaBoost */
     , (603001, 104,      10) /* ObviousRadarRange */
     , (603001, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (603001,   1, 'Lesser Ore Node') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (603001,   1,   33558339) /* Setup */
     , (603001,   2,  150995239) /* MotionTable */
     , (603001,   3,  536871069) /* SoundTable */
     , (603001,   4,  805306369) /* CombatTable */
     , (603001,   8,  100674306) /* Icon */
     , (603001,  22,  872415265) /* PhysicsEffectTable */
     , (603001,  30,         86) /* PhysicsScript - BreatheAcid */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (603001,   1, 130, 0, 0) /* Strength */
     , (603001,   2, 130, 0, 0) /* Endurance */
     , (603001,   3,  90, 0, 0) /* Quickness */
     , (603001,   4,  90, 0, 0) /* Coordination */
     , (603001,   5,  60, 0, 0) /* Focus */
     , (603001,   6,  30, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (603001,   1,    50, 0, 0, 115) /* MaxHealth */
     , (603001,   3,   150, 0, 0, 280) /* MaxStamina */
     , (603001,   5,     0, 0, 0, 30) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (603001, 32, 0, 3, 0, 200, 0, 702.19189453125) /* ItemEnchantment     Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (603001,  0,  4, 35, 0.75,   90,   56,   72,   54,   56,   56,   29,   10,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (603001, 16,  4,  0,    0,  100,   62,   80,   60,   62,   62,   32,   11,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (603001, 18,  4, 35, 0.75,   90,   56,   72,   54,   56,   56,   29,   10,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (603001, 19,  4, 20,    0,  100,   62,   80,   60,   62,   62,   32,   11,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (603001, 20,  4, 35, 0.75,   90,   56,   72,   54,   56,   56,   29,   10,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (603001, 22, 32, 30,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

/* Lifestoned Changelog:
{
  "LastModified": "2024-02-19T20:55:58.5439848-08:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "<WM>BATCH EDIT - Incremented DID 30 value from: 85 to: 86",
  "IsDone": false
}
*/
