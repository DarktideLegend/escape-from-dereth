DELETE FROM `weenie` WHERE `class_Id` = 45965;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45965, 'ace45965-seasonedexplorergirth', 2, '2023-06-13 07:05:07') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45965,   1,          2) /* ItemType - Armor */
     , (45965,   3,         84) /* PaletteTemplate - DyeDarkGreen */
     , (45965,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (45965,   5,        500) /* EncumbranceVal */
     , (45965,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (45965,  16,          1) /* ItemUseable - No */
     , (45965,  19,          1) /* Value */
     , (45965,  28,        190) /* ArmorLevel */
     , (45965,  33,          1) /* Bonded - Bonded */
     , (45965,  53,        101) /* PlacementPosition - Resting */
     , (45965,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45965, 106,        250) /* ItemSpellcraft */
     , (45965, 107,        400) /* ItemCurMana */
     , (45965, 108,        400) /* ItemMaxMana */
     , (45965, 109,        100) /* ItemDifficulty */
     , (45965, 114,          1) /* Attuned - Attuned */
     , (45965, 158,          7) /* WieldRequirements - Level */
     , (45965, 159,          1) /* WieldSkillType - Axe */
     , (45965, 160,          1) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45965,  11, True ) /* IgnoreCollisions */
     , (45965,  13, True ) /* Ethereal */
     , (45965,  14, True ) /* GravityStatus */
     , (45965,  19, True ) /* Attackable */
     , (45965,  22, True ) /* Inscribable */
     , (45965,  85, True ) /* AppraisalHasAllowedWielder */
     , (45965,  99, True ) /* Ivoryable */
     , (45965, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45965,   5, -0.02500000037252903) /* ManaRate */
     , (45965,  12, 0.6545000076293945) /* Shade */
     , (45965,  13,       1) /* ArmorModVsSlash */
     , (45965,  14,       1) /* ArmorModVsPierce */
     , (45965,  15,       1) /* ArmorModVsBludgeon */
     , (45965,  16, 0.6000000238418579) /* ArmorModVsCold */
     , (45965,  17, 0.6000000238418579) /* ArmorModVsFire */
     , (45965,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (45965,  19, 0.6000000238418579) /* ArmorModVsElectric */
     , (45965, 165,       0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45965,   1, 'Seasoned Explorer Girth') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45965,   1,   33554647) /* Setup */
     , (45965,   3,  536870932) /* SoundTable */
     , (45965,   6,   67108990) /* PaletteBase */
     , (45965,   7,  268437415) /* ClothingBase */
     , (45965,   8,  100691087) /* Icon */
     , (45965,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:58:30.0377765-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "changed clothing base and palette"
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "neutropia",
      "comment": "Removing nether armor mod"
    }
  ],
  "UserChangeSummary": "Removing nether armor mod",
  "IsDone": false
}
*/
