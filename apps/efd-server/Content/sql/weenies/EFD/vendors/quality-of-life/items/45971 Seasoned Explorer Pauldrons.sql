DELETE FROM `weenie` WHERE `class_Id` = 45971;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45971, 'ace45971-seasonedexplorerpauldrons', 2, '2023-06-13 07:05:07') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45971,   1,          2) /* ItemType - Armor */
     , (45971,   3,         84) /* PaletteTemplate - DyeDarkGreen */
     , (45971,   4,       4096) /* ClothingPriority - OuterwearUpperArms */
     , (45971,   5,        350) /* EncumbranceVal */
     , (45971,   9,       2048) /* ValidLocations - UpperArmArmor */
     , (45971,  16,          1) /* ItemUseable - No */
     , (45971,  19,          1) /* Value */
     , (45971,  28,        190) /* ArmorLevel */
     , (45971,  33,          1) /* Bonded - Bonded */
     , (45971,  53,        101) /* PlacementPosition - Resting */
     , (45971,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45971, 106,        250) /* ItemSpellcraft */
     , (45971, 107,        400) /* ItemCurMana */
     , (45971, 108,        400) /* ItemMaxMana */
     , (45971, 109,        100) /* ItemDifficulty */
     , (45971, 114,          1) /* Attuned - Attuned */
     , (45971, 158,          7) /* WieldRequirements - Level */
     , (45971, 159,          1) /* WieldSkillType - Axe */
     , (45971, 160,          1) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45971,  11, True ) /* IgnoreCollisions */
     , (45971,  13, True ) /* Ethereal */
     , (45971,  14, True ) /* GravityStatus */
     , (45971,  19, True ) /* Attackable */
     , (45971,  22, True ) /* Inscribable */
     , (45971,  99, True ) /* Ivoryable */
     , (45971, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45971,   5, -0.02500000037252903) /* ManaRate */
     , (45971,  12, 0.6545000076293945) /* Shade */
     , (45971,  13,       1) /* ArmorModVsSlash */
     , (45971,  14,       1) /* ArmorModVsPierce */
     , (45971,  15,       1) /* ArmorModVsBludgeon */
     , (45971,  16, 0.6000000238418579) /* ArmorModVsCold */
     , (45971,  17, 0.6000000238418579) /* ArmorModVsFire */
     , (45971,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (45971,  19, 0.6000000238418579) /* ArmorModVsElectric */
     , (45971,  39, 1.100000023841858) /* DefaultScale */
     , (45971, 165,       0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45971,   1, 'Seasoned Explorer Pauldrons') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45971,   1,   33554641) /* Setup */
     , (45971,   3,  536870932) /* SoundTable */
     , (45971,   6,   67108990) /* PaletteBase */
     , (45971,   7,  268437470) /* ClothingBase */
     , (45971,   8,  100691114) /* Icon */
     , (45971,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:57:46.0016808-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "removed spells, added palette and proper clothing property"
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
