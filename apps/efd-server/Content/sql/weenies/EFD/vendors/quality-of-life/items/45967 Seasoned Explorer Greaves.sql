DELETE FROM `weenie` WHERE `class_Id` = 45967;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45967, 'ace45967-seasonedexplorergreaves', 2, '2023-06-13 07:05:07') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45967,   1,          2) /* ItemType - Armor */
     , (45967,   3,         84) /* PaletteTemplate - DyeDarkGreen */
     , (45967,   4,        512) /* ClothingPriority - OuterwearLowerLegs */
     , (45967,   5,        450) /* EncumbranceVal */
     , (45967,   9,      16384) /* ValidLocations - LowerLegArmor */
     , (45967,  16,          1) /* ItemUseable - No */
     , (45967,  19,          1) /* Value */
     , (45967,  28,        190) /* ArmorLevel */
     , (45967,  33,          1) /* Bonded - Bonded */
     , (45967,  53,        101) /* PlacementPosition - Resting */
     , (45967,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45967, 106,        250) /* ItemSpellcraft */
     , (45967, 107,        400) /* ItemCurMana */
     , (45967, 108,        400) /* ItemMaxMana */
     , (45967, 109,        100) /* ItemDifficulty */
     , (45967, 114,          1) /* Attuned - Attuned */
     , (45967, 158,          7) /* WieldRequirements - Level */
     , (45967, 159,          1) /* WieldSkillType - Axe */
     , (45967, 160,          1) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45967,  11, True ) /* IgnoreCollisions */
     , (45967,  13, True ) /* Ethereal */
     , (45967,  14, True ) /* GravityStatus */
     , (45967,  19, True ) /* Attackable */
     , (45967,  22, True ) /* Inscribable */
     , (45967,  99, True ) /* Ivoryable */
     , (45967, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45967,   5, -0.02500000037252903) /* ManaRate */
     , (45967,  13,       1) /* ArmorModVsSlash */
     , (45967,  14,       1) /* ArmorModVsPierce */
     , (45967,  15,       1) /* ArmorModVsBludgeon */
     , (45967,  16, 0.6000000238418579) /* ArmorModVsCold */
     , (45967,  17, 0.6000000238418579) /* ArmorModVsFire */
     , (45967,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (45967,  19, 0.6000000238418579) /* ArmorModVsElectric */
     , (45967,  39, 1.3300000429153442) /* DefaultScale */
     , (45967, 165,       0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45967,   1, 'Seasoned Explorer Greaves') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45967,   1,   33554641) /* Setup */
     , (45967,   3,  536870932) /* SoundTable */
     , (45967,   6,   67108990) /* PaletteBase */
     , (45967,   7,  268437416) /* ClothingBase */
     , (45967,   8,  100691096) /* Icon */
     , (45967,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:58:16.5689326-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "changed clothingbase , added palette and shade, aligned stats to yotes"
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
