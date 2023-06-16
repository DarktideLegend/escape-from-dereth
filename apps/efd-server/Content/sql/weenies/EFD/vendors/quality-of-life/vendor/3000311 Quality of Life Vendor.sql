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
     , (3000311,  41, True ) /* ReportCollisionsAsEnvironment */;

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
     , (3000311, 4, 3000330, -1, 0, 0, False) /* Create  (3000330) for Shop */
     , (3000311, 4, 2029109, -1, 0, 0, False) /* Create  (2029109) for Shop */
     , (3000311, 4, 2032272, -1, 0, 0, False) /* Create  (2032272) for Shop */
     , (3000311, 4, 2029104, -1, 0, 0, False) /* Create  (2029104) for Shop */
     , (3000311, 4, 2032270, -1, 0, 0, False) /* Create  (2032270) for Shop */
     , (3000311, 4, 2032271, -1, 0, 0, False) /* Create  (2032271) for Shop */
     , (3000311, 4, 22449, -1, 0, 0, False) /* Create Plentiful Healing Kit (22449) for Shop */
     , (3000311, 4, 3000360, -1, 0, 0, False) /* Create  (3000360) for Shop */
     , (3000311, 4, 34257, -1, 0, 0, False) /* Create Asheron's Lesser Benediction (34257) for Shop */
     , (3000311, 4, 23356, -1, 0, 0, False) /* Create Sanguinary Aegis (23356) for Shop */
     , (3000311, 4, 21998, -1, 0, 0, False) /* Create Bundle of Deadly Chorizite Arrowheads (21998) for Shop */
     , (3000311, 4, 15856, -1, 0, 0, False) /* Create Encrusted Bloodstone Jewel (15856) for Shop */
     , (3000311, 4, 29266, -1, 0, 0, False) /* Create Ciandra's Fortune (29266) for Shop */
     , (3000311, 4, 29267, -1, 0, 0, False) /* Create Quick Learner (29267) for Shop */
     , (3000311, 4, 29268, -1, 0, 0, False) /* Create Might of the Seventh Mule (29268) for Shop */
     , (3000311, 4, 29269, -1, 0, 0, False) /* Create Critical Protection (29269) for Shop */
     , (3000311, 4, 29270, -1, 0, 0, False) /* Create Clutch of the Miser (29270) for Shop */
     , (3000311, 4, 29271, -1, 0, 0, False) /* Create Enduring Enchantment (29271) for Shop */
     , (3000311, 4, 29272, -1, 0, 0, False) /* Create Innate Renewal (29272) for Shop */
     , (3000311, 4, 29273, -1, 0, 0, False) /* Create Charmed Smith (29273) for Shop */
     , (3000311, 4, 29275, -1, 0, 0, False) /* Create Enhancement of the Mace Turner (29275) for Shop */
     , (3000311, 4, 29276, -1, 0, 0, False) /* Create Storm's Enhancement (29276) for Shop */
     , (3000311, 4, 29277, -1, 0, 0, False) /* Create Fiery Enhancement (29277) for Shop */
     , (3000311, 4, 29278, -1, 0, 0, False) /* Create Icy Enhancement (29278) for Shop */
     , (3000311, 4, 29279, -1, 0, 0, False) /* Create Enhancement of the Arrow Turner (29279) for Shop */
     , (3000311, 4, 29280, -1, 0, 0, False) /* Create Enhancement of the Blade Turner (29280) for Shop */
     , (3000311, 4, 29284, -1, 0, 0, False) /* Create Jibril's Essence (29284) for Shop */
     , (3000311, 4, 29282, -1, 0, 0, False) /* Create Shadow of The Seventh Mule (29282) for Shop */
     , (3000311, 4, 29283, -1, 0, 0, False) /* Create Archmage's Endurance (29283) for Shop */
     , (3000311, 4, 29285, -1, 0, 0, False) /* Create Yoshi's Essence (29285) for Shop */
     , (3000311, 4, 29286, -1, 0, 0, False) /* Create Celdiseth's Essence (29286) for Shop */
     , (3000311, 4, 29287, -1, 0, 0, False) /* Create Ciandra's Essence (29287) for Shop */
     , (3000311, 4, 29288, -1, 0, 0, False) /* Create Koga's Essence (29288) for Shop */
     , (3000311, 4, 29289, -1, 0, 0, False) /* Create Oswald's Enhancement (29289) for Shop */
     , (3000311, 4, 29290, -1, 0, 0, False) /* Create Bleeargh's Fortitude (29290) for Shop */
     , (3000311, 4, 29291, -1, 0, 0, False) /* Create Enduring Calm (29291) for Shop */
     , (3000311, 4, 29292, -1, 0, 0, False) /* Create Siraluun's Blessing (29292) for Shop */
     , (3000311, 4, 29293, -1, 0, 0, False) /* Create Steadfast Will (29293) for Shop */
     , (3000311, 4, 29294, -1, 0, 0, False) /* Create Reinforcement of the Lugians (29294) for Shop */
     , (3000311, 4, 41472, -1, 0, 0, False) /* Create Infused Creature Magic (41472) for Shop */
     , (3000311, 4, 41473, -1, 0, 0, False) /* Create Infused Item Magic (41473) for Shop */
     , (3000311, 4, 41474, -1, 0, 0, False) /* Create Infused Life Magic (41474) for Shop */
     , (3000311, 4, 41475, -1, 0, 0, False) /* Create Infused War Magic (41475) for Shop */
     , (3000311, 4, 41476, -1, 0, 0, False) /* Create Master of the Five Fold Path (41476) for Shop */
     , (3000311, 4, 41477, -1, 0, 0, False) /* Create Master of the Steel Circle (41477) for Shop */
     , (3000311, 4, 41478, -1, 0, 0, False) /* Create Frenzy of the Slayer (41478) for Shop */
     , (3000311, 4, 41479, -1, 0, 0, False) /* Create Infused Void Magic (41479) for Shop */
     , (3000311, 4, 41480, -1, 0, 0, False) /* Create Iron Skin of the Invincible (41480) for Shop */
     , (3000311, 4, 41481, -1, 0, 0, False) /* Create Hand of the Remorseless (41481) for Shop */
     , (3000311, 4, 41482, -1, 0, 0, False) /* Create Eye of the Remorseless (41482) for Shop */
     , (3000311, 4, 41490, -1, 0, 0, False) /* Create Master of the Focused Eye (41490) for Shop */
     , (3000311, 4, 43167, -1, 0, 0, False) /* Create Jack of All Trades (43167) for Shop */
     , (3000311, 4, 30246, -1, 0, 0, False) /* Create Artist's Crystal (30246) for Shop */
     , (3000311, 4,  8904, -1, 0, 0, False) /* Create Focusing Stone (8904) for Shop */
     , (3000311, 4, 35593, -1, 0, 0, False) /* Create  (35593) for Shop */
     , (3000311, 4, 21964, -1, 0, 0, False) /* Create Phantom Bow (21964) for Shop */
     , (3000311, 4, 21353, -1, 0, 0, False) /* Create Phantom Axe (21353) for Shop */
     , (3000311, 4, 21354, -1, 0, 0, False) /* Create Phantom Dagger (21354) for Shop */
     , (3000311, 4, 21355, -1, 0, 0, False) /* Create Phantom Katar (21355) for Shop */
     , (3000311, 4, 21356, -1, 0, 0, False) /* Create Phantom Mace (21356) for Shop */
     , (3000311, 4, 21357, -1, 0, 0, False) /* Create Phantom Staff (21357) for Shop */
     , (3000311, 4, 21358, -1, 0, 0, False) /* Create Phantom Spear (21358) for Shop */
     , (3000311, 4, 41708, -1, 0, 0, False) /* Create Phantom Two Handed Spear (41708) for Shop */
     , (3000311, 4, 21359, -1, 0, 0, False) /* Create Phantom Sword (21359) for Shop */
     , (3000311, 4,  7563, -1, 0, 0, False) /* Create Hollow Axe (7563) for Shop */
     , (3000311, 4,  7565, -1, 0, 0, False) /* Create Hollow Dagger (7565) for Shop */
     , (3000311, 4,  7567, -1, 0, 0, False) /* Create Hollow Katar (7567) for Shop */
     , (3000311, 4,  7569, -1, 0, 0, False) /* Create Hollow Mace (7569) for Shop */
     , (3000311, 4,  7571, -1, 0, 0, False) /* Create Hollow Staff (7571) for Shop */
     , (3000311, 4,  7573, -1, 0, 0, False) /* Create Hollow Spear (7573) for Shop */
     , (3000311, 4,  7575, -1, 0, 0, False) /* Create Hollow Sword (7575) for Shop */
     , (3000311, 4, 21961, -1, 0, 0, False) /* Create Hollow Bow (21961) for Shop */
     , (3000311, 4, 4100252, -1, 0, 0, False) /* Create  (4100252) for Shop */
     , (3000311, 4, 41637, -1, 0, 0, False) /* Create Hollow Two Handed Spear (41637) for Shop */
     

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
