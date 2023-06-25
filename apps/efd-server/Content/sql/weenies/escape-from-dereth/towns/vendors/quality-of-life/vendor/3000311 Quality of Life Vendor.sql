DELETE FROM `weenie` WHERE `class_Id` = 3000311;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (3000311, 'ace3000311-qualityoflifevendor', 12, '2023-06-13 07:05:07') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (3000311,   1,         16) /* ItemType - Creature */
     , (3000311,   2,         31) /* CreatureType - Human */
     , (3000311,   6,        255) /* ItemsCapacity */
     , (3000311,   7,        255) /* ContainersCapacity */
     , (3000311,  16,         32) /* ItemUseable - Remote */
     , (3000311,  25,        275) /* Level */
     , (3000311,  74, 1073741824) /* MerchandiseItemTypes - TinkeringMaterial */
     , (3000311,  75,          0) /* MerchandiseMinValue */
     , (3000311,  76,     100000) /* MerchandiseMaxValue */
     , (3000311,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (3000311, 113,          1) /* Gender - Male */
     , (3000311, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (3000311, 134,          8) /* PlayerKillerStatus - Creature */
     , (3000311, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (3000311,   1, True ) /* Stuck */
     , (3000311,  11, True ) /* IgnoreCollisions */
     , (3000311,  12, True ) /* ReportCollisions */
     , (3000311,  13, False) /* Ethereal */
     , (3000311,  14, True ) /* GravityStatus */
     , (3000311,  19, False) /* Attackable */
     , (3000311,  39, True ) /* DealMagicalItems */
     , (3000311,  41, True ) /* ReportCollisionsAsEnvironment */
     , (3000311,  42003, True ) /* Custom Content */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (3000311,  37,       1) /* BuyPrice */
     , (3000311,  38,       1) /* SellPrice */
     , (3000311,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (3000311,   1, 'Quality of Life Vendor') /* Name */
     , (3000311,   5, 'Most Generous Man') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (3000311,   1,   33554433) /* Setup */
     , (3000311,   2,  150994945) /* MotionTable */
     , (3000311,   3,  536870913) /* SoundTable */
     , (3000311,   6,   67108990) /* PaletteBase */
     , (3000311,   8,  100667446) /* Icon */
     , (3000311,   9,   83890511) /* EyesTexture */
     , (3000311,  10,   83890562) /* NoseTexture */
     , (3000311,  11,   83890637) /* MouthTexture */
     , (3000311,  15,   67117076) /* HairPalette */
     , (3000311,  16,   67109564) /* EyesPalette */
     , (3000311,  17,   67109560) /* SkinPalette */
     , (3000311,  57,      20630) /* AlternateCurrency - Trade Note (250,000) */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (3000311,   1, 260, 0, 0) /* Strength */
     , (3000311,   2, 290, 0, 0) /* Endurance */
     , (3000311,   3, 200, 0, 0) /* Quickness */
     , (3000311,   4, 290, 0, 0) /* Coordination */
     , (3000311,   5, 290, 0, 0) /* Focus */
     , (3000311,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (3000311,   1,    10, 0, 0, 495) /* MaxHealth */
     , (3000311,   3,    10, 0, 0, 790) /* MaxStamina */
     , (3000311,   5,    10, 0, 0, 700) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (3000311,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'What can I do you for?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (3000311,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Stay thirsty my friend..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (3000311,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Thank''s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (3000311, 0,     0,  0, 0, 0, False) /* Create nothing for Undef */
     , (3000311, 0,     0,  0, 0, 0, False) /* Create nothing for Undef */
     , (3000311, 2, 25703,  0, 93, 1, False) /* Create Dapper Suit (25703) for Wield */
     , (3000311, 4, 30186, -1, 0, 0, False) /* Create Smithy's Crystal (30186) for Shop */
     , (3000311, 4, 30215, -1, 0, 0, False) /* Create Tinker's Crystal (30215) for Shop */
     , (3000311, 4, 30225, -1, 0, 0, False) /* Create Imbuer's Crystal (30225) for Shop */
     , (3000311, 4, 36568, -1, 0, 0, False) /* Create  (36568) for Shop */
     , (3000311, 4, 36566, -1, 0, 0, False) /* Create  (36566) for Shop */
     , (3000311, 4, 36564, -1, 0, 0, False) /* Create  (36564) for Shop */
     , (3000311, 4, 36567, -1, 0, 0, False) /* Create  (36567) for Shop */
     , (3000311, 4, 36565, -1, 0, 0, False) /* Create  (36565) for Shop */
     , (3000311, 4, 36619, -1, 0, 0, False) /* Create Foolproof Aquamarine (36619) for Shop */
     , (3000311, 4, 36624, -1, 0, 0, False) /* Create  (36624) for Shop */
     , (3000311, 4, 36626, -1, 0, 0, False) /* Create  (36626) for Shop */
     , (3000311, 4, 36625, -1, 0, 0, False) /* Create  (36625) for Shop */
     , (3000311, 4, 36620, -1, 0, 0, False) /* Create  (36620) for Shop */
     , (3000311, 4, 36628, -1, 0, 0, False) /* Create  (36628) for Shop */
     , (3000311, 4, 36622, -1, 0, 0, False) /* Create  (36622) for Shop */
     , (3000311, 4, 36621, -1, 0, 0, False) /* Create  (36621) for Shop */
     , (3000311, 4, 36623, -1, 0, 0, False) /* Create  (36623) for Shop */
     , (3000311, 4, 36627, -1, 0, 0, False) /* Create  (36627) for Shop */
     , (3000311, 4, 2029109, -1, 0, 0, False) /* Create  (2029109) for Shop */
     , (3000311, 4, 2032272, -1, 0, 0, False) /* Create  (2032272) for Shop */
     , (3000311, 4, 2029104, -1, 0, 0, False) /* Create  (2029104) for Shop */
     , (3000311, 4, 2032270, -1, 0, 0, False) /* Create  (2032270) for Shop */
     , (3000311, 4, 2032271, -1, 0, 0, False) /* Create  (2032271) for Shop */
     , (3000311, 4, 22449, -1, 0, 0, False) /* Create Plentiful Healing Kit (22449) for Shop */
     , (3000311, 4, 34257, -1, 0, 0, False) /* Create Asheron's Lesser Benediction (34257) for Shop */
     , (3000311, 4, 15856, -1, 0, 0, False) /* Create Encrusted Bloodstone Jewel (15856) for Shop */
     , (3000311, 4, 30246, -1, 0, 0, False) /* Create Artist's Crystal (30246) for Shop */
     , (3000311, 4,  8904, -1, 0, 0, False) /* Create Focusing Stone (8904) for Shop */;
     

/* Lifestoned Changelog:
{
  "LastModified": "2022-06-18T13:52:31.2035842-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "ACE.Adapter",
      "comment": "Weenie exported from ACEmulator world database using ACE.Adapter"
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "ACE.Adapter",
      "comment": "Weenie exported from ACEmulator world database using ACE.Adapter"
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "ACE.Adapter",
      "comment": "Weenie exported from ACEmulator world database using ACE.Adapter"
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "ACE.Adapter",
      "comment": "Weenie exported from ACEmulator world database using ACE.Adapter"
    }
  ],
  "UserChangeSummary": "Weenie exported from ACEmulator world database using ACE.Adapter",
  "IsDone": false
}
*/
