DELETE FROM `weenie` WHERE `class_Id` = 45975;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45975, 'ace45975-seasonedexplorerboots', 2, '2023-06-13 07:05:07') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45975,   1,          2) /* ItemType - Armor */
     , (45975,   3,         84) /* PaletteTemplate - DyeDarkGreen */
     , (45975,   4,      65536) /* ClothingPriority - Feet */
     , (45975,   5,        300) /* EncumbranceVal */
     , (45975,   9,        256) /* ValidLocations - FootWear */
     , (45975,  16,          1) /* ItemUseable - No */
     , (45975,  19,          1) /* Value */
     , (45975,  28,        230) /* ArmorLevel */
     , (45975,  33,          1) /* Bonded - Bonded */
     , (45975,  53,        101) /* PlacementPosition - Resting */
     , (45975,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45975, 106,        250) /* ItemSpellcraft */
     , (45975, 107,        400) /* ItemCurMana */
     , (45975, 108,        400) /* ItemMaxMana */
     , (45975, 109,        100) /* ItemDifficulty */
     , (45975, 114,          1) /* Attuned - Attuned */
     , (45975, 158,          7) /* WieldRequirements - Level */
     , (45975, 159,          1) /* WieldSkillType - Axe */
     , (45975, 160,          1) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45975,  11, True ) /* IgnoreCollisions */
     , (45975,  13, True ) /* Ethereal */
     , (45975,  14, True ) /* GravityStatus */
     , (45975,  19, True ) /* Attackable */
     , (45975,  22, True ) /* Inscribable */
     , (45975,  99, True ) /* Ivoryable */
     , (45975, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45975,   5, -0.02500000037252903) /* ManaRate */
     , (45975,  13,       1) /* ArmorModVsSlash */
     , (45975,  14,       1) /* ArmorModVsPierce */
     , (45975,  15,       1) /* ArmorModVsBludgeon */
     , (45975,  16, 0.6000000238418579) /* ArmorModVsCold */
     , (45975,  17, 0.6000000238418579) /* ArmorModVsFire */
     , (45975,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (45975,  19, 0.6000000238418579) /* ArmorModVsElectric */
     , (45975, 165,       0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45975,   1, 'Seasoned Explorer Boots') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45975,   1,   33556683) /* Setup */
     , (45975,   3,  536870932) /* SoundTable */
     , (45975,   6,   67108990) /* PaletteBase */
     , (45975,   7,  268437419) /* ClothingBase */
     , (45975,   8,  100691123) /* Icon */
     , (45975,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:57:08.27868-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "updatet to eor per yotes"
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
