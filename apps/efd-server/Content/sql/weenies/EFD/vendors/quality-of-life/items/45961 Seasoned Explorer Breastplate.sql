DELETE FROM `weenie` WHERE `class_Id` = 45961;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45961, 'ace45961-seasonedexplorerbreastplate', 2, '2023-06-13 07:05:07') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45961,   1,          2) /* ItemType - Armor */
     , (45961,   3,         84) /* PaletteTemplate - DyeDarkGreen */
     , (45961,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (45961,   5,       1100) /* EncumbranceVal */
     , (45961,   9,        512) /* ValidLocations - ChestArmor */
     , (45961,  16,          1) /* ItemUseable - No */
     , (45961,  19,          1) /* Value */
     , (45961,  28,        190) /* ArmorLevel */
     , (45961,  33,          1) /* Bonded - Bonded */
     , (45961,  53,        101) /* PlacementPosition - Resting */
     , (45961,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45961, 106,        250) /* ItemSpellcraft */
     , (45961, 107,        400) /* ItemCurMana */
     , (45961, 108,        400) /* ItemMaxMana */
     , (45961, 109,        100) /* ItemDifficulty */
     , (45961, 114,          1) /* Attuned - Attuned */
     , (45961, 158,          7) /* WieldRequirements - Level */
     , (45961, 159,          1) /* WieldSkillType - Axe */
     , (45961, 160,          1) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45961,  11, True ) /* IgnoreCollisions */
     , (45961,  13, True ) /* Ethereal */
     , (45961,  14, True ) /* GravityStatus */
     , (45961,  19, True ) /* Attackable */
     , (45961,  22, True ) /* Inscribable */
     , (45961,  99, True ) /* Ivoryable */
     , (45961, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45961,   5, -0.02500000037252903) /* ManaRate */
     , (45961,  12, 0.6545000076293945) /* Shade */
     , (45961,  13,       1) /* ArmorModVsSlash */
     , (45961,  14,       1) /* ArmorModVsPierce */
     , (45961,  15,       1) /* ArmorModVsBludgeon */
     , (45961,  16, 0.6000000238418579) /* ArmorModVsCold */
     , (45961,  17, 0.6000000238418579) /* ArmorModVsFire */
     , (45961,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (45961,  19, 0.6000000238418579) /* ArmorModVsElectric */
     , (45961, 165,       0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45961,   1, 'Seasoned Explorer Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45961,   1,   33554642) /* Setup */
     , (45961,   3,  536870932) /* SoundTable */
     , (45961,   6,   67108990) /* PaletteBase */
     , (45961,   7,  268437413) /* ClothingBase */
     , (45961,   8,  100691078) /* Icon */
     , (45961,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:59:25.622125-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "added palette and shade, removed spells"
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
