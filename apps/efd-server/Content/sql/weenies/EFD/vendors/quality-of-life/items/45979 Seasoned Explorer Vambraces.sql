DELETE FROM `weenie` WHERE `class_Id` = 45979;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45979, 'ace45979-seasonedexplorervambraces', 2, '2023-06-13 07:05:07') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45979,   1,          2) /* ItemType - Armor */
     , (45979,   3,         84) /* PaletteTemplate - DyeDarkGreen */
     , (45979,   4,       8192) /* ClothingPriority - OuterwearLowerArms */
     , (45979,   5,        300) /* EncumbranceVal */
     , (45979,   9,       4096) /* ValidLocations - LowerArmArmor */
     , (45979,  16,          1) /* ItemUseable - No */
     , (45979,  19,          1) /* Value */
     , (45979,  28,        190) /* ArmorLevel */
     , (45979,  33,          1) /* Bonded - Bonded */
     , (45979,  53,        101) /* PlacementPosition - Resting */
     , (45979,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45979, 106,        250) /* ItemSpellcraft */
     , (45979, 107,        400) /* ItemCurMana */
     , (45979, 108,        400) /* ItemMaxMana */
     , (45979, 109,        100) /* ItemDifficulty */
     , (45979, 114,          1) /* Attuned - Attuned */
     , (45979, 158,          7) /* WieldRequirements - Level */
     , (45979, 159,          1) /* WieldSkillType - Axe */
     , (45979, 160,          1) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45979,  11, True ) /* IgnoreCollisions */
     , (45979,  13, True ) /* Ethereal */
     , (45979,  14, True ) /* GravityStatus */
     , (45979,  19, True ) /* Attackable */
     , (45979,  22, True ) /* Inscribable */
     , (45979,  99, True ) /* Ivoryable */
     , (45979, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45979,   5, -0.02500000037252903) /* ManaRate */
     , (45979,  13,       1) /* ArmorModVsSlash */
     , (45979,  14,       1) /* ArmorModVsPierce */
     , (45979,  15,       1) /* ArmorModVsBludgeon */
     , (45979,  16, 0.6000000238418579) /* ArmorModVsCold */
     , (45979,  17, 0.6000000238418579) /* ArmorModVsFire */
     , (45979,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (45979,  19, 0.6000000238418579) /* ArmorModVsElectric */
     , (45979, 165,       0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45979,   1, 'Seasoned Explorer Vambraces') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45979,   1,   33559082) /* Setup */
     , (45979,   3,  536870932) /* SoundTable */
     , (45979,   6,   67108990) /* PaletteBase */
     , (45979,   7,  268437412) /* ClothingBase */
     , (45979,   8,  100691069) /* Icon */
     , (45979,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:56:46.3166978-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "added palette, removed  spells, added proper setup and clothing base"
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
