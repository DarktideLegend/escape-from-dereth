DELETE FROM `weenie` WHERE `class_Id` = 45977;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45977, 'ace45977-seasonedexplorertassets', 2, '2023-06-13 07:05:07') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45977,   1,          2) /* ItemType - Armor */
     , (45977,   3,         84) /* PaletteTemplate - DyeDarkGreen */
     , (45977,   4,        256) /* ClothingPriority - OuterwearUpperLegs */
     , (45977,   5,        450) /* EncumbranceVal */
     , (45977,   9,       8192) /* ValidLocations - UpperLegArmor */
     , (45977,  16,          1) /* ItemUseable - No */
     , (45977,  19,          1) /* Value */
     , (45977,  28,        190) /* ArmorLevel */
     , (45977,  33,          1) /* Bonded - Bonded */
     , (45977,  53,        101) /* PlacementPosition - Resting */
     , (45977,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45977, 106,        250) /* ItemSpellcraft */
     , (45977, 107,        400) /* ItemCurMana */
     , (45977, 108,        400) /* ItemMaxMana */
     , (45977, 109,        100) /* ItemDifficulty */
     , (45977, 114,          1) /* Attuned - Attuned */
     , (45977, 158,          7) /* WieldRequirements - Level */
     , (45977, 159,          0) /* WieldSkillType - None */
     , (45977, 160,          1) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45977,  11, True ) /* IgnoreCollisions */
     , (45977,  13, True ) /* Ethereal */
     , (45977,  14, True ) /* GravityStatus */
     , (45977,  19, True ) /* Attackable */
     , (45977,  22, True ) /* Inscribable */
     , (45977,  99, True ) /* Ivoryable */
     , (45977, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45977,   5, -0.02500000037252903) /* ManaRate */
     , (45977,  13,       1) /* ArmorModVsSlash */
     , (45977,  14,       1) /* ArmorModVsPierce */
     , (45977,  15,       1) /* ArmorModVsBludgeon */
     , (45977,  16, 0.6000000238418579) /* ArmorModVsCold */
     , (45977,  17, 0.699999988079071) /* ArmorModVsFire */
     , (45977,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (45977,  19, 0.4000000059604645) /* ArmorModVsElectric */
     , (45977,  39, 1.3300000429153442) /* DefaultScale */
     , (45977, 165,       0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45977,   1, 'Seasoned Explorer Tassets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45977,   1,   33554656) /* Setup */
     , (45977,   3,  536870932) /* SoundTable */
     , (45977,   6,   67108990) /* PaletteBase */
     , (45977,   7,  268437420) /* ClothingBase */
     , (45977,   8,  100691132) /* Icon */
     , (45977,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:57:22.8440116-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "update to pcaps info"
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
