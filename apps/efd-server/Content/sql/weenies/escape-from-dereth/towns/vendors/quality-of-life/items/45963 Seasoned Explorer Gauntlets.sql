DELETE FROM `weenie` WHERE `class_Id` = 45963;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45963, 'ace45963-seasonedexplorergauntlets', 2, '2023-06-13 07:05:07') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45963,   1,          2) /* ItemType - Armor */
     , (45963,   3,         84) /* PaletteTemplate - DyeDarkGreen */
     , (45963,   4,      32768) /* ClothingPriority - Hands */
     , (45963,   5,        450) /* EncumbranceVal */
     , (45963,   9,         32) /* ValidLocations - HandWear */
     , (45963,  16,          1) /* ItemUseable - No */
     , (45963,  19,          1) /* Value */
     , (45963,  28,        230) /* ArmorLevel */
     , (45963,  33,          1) /* Bonded - Bonded */
     , (45963,  53,        101) /* PlacementPosition - Resting */
     , (45963,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45963, 106,        250) /* ItemSpellcraft */
     , (45963, 107,        400) /* ItemCurMana */
     , (45963, 108,        400) /* ItemMaxMana */
     , (45963, 109,        100) /* ItemDifficulty */
     , (45963, 114,          1) /* Attuned - Attuned */
     , (45963, 158,          7) /* WieldRequirements - Level */
     , (45963, 159,          1) /* WieldSkillType - Axe */
     , (45963, 160,          1) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45963,  11, True ) /* IgnoreCollisions */
     , (45963,  13, True ) /* Ethereal */
     , (45963,  14, True ) /* GravityStatus */
     , (45963,  19, True ) /* Attackable */
     , (45963,  22, True ) /* Inscribable */
     , (45963,  99, True ) /* Ivoryable */
     , (45963, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45963,   5, -0.02500000037252903) /* ManaRate */
     , (45963,  13,       1) /* ArmorModVsSlash */
     , (45963,  14,       1) /* ArmorModVsPierce */
     , (45963,  15,       1) /* ArmorModVsBludgeon */
     , (45963,  16, 0.6000000238418579) /* ArmorModVsCold */
     , (45963,  17, 0.6000000238418579) /* ArmorModVsFire */
     , (45963,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (45963,  19, 0.6000000238418579) /* ArmorModVsElectric */
     , (45963, 165,       0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45963,   1, 'Seasoned Explorer Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45963,   1,   33554648) /* Setup */
     , (45963,   3,  536870932) /* SoundTable */
     , (45963,   6,   67108990) /* PaletteBase */
     , (45963,   7,  268437414) /* ClothingBase */
     , (45963,   8,  100687132) /* Icon */
     , (45963,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:58:55.6591653-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "removed spells, added palette, and proper clothing base"
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
