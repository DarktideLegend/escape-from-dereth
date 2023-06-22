DELETE FROM `weenie` WHERE `class_Id` = 45969;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45969, 'ace45969-seasonedexplorerhelm', 2, '2023-06-13 07:05:07') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45969,   1,          2) /* ItemType - Armor */
     , (45969,   3,         84) /* PaletteTemplate - DyeDarkGreen */
     , (45969,   4,      16384) /* ClothingPriority - Head */
     , (45969,   5,        330) /* EncumbranceVal */
     , (45969,   9,          1) /* ValidLocations - HeadWear */
     , (45969,  16,          1) /* ItemUseable - No */
     , (45969,  19,          1) /* Value */
     , (45969,  28,        230) /* ArmorLevel */
     , (45969,  33,          1) /* Bonded - Bonded */
     , (45969,  53,        101) /* PlacementPosition - Resting */
     , (45969,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45969, 106,        250) /* ItemSpellcraft */
     , (45969, 107,        400) /* ItemCurMana */
     , (45969, 108,        400) /* ItemMaxMana */
     , (45969, 109,        100) /* ItemDifficulty */
     , (45969, 114,          1) /* Attuned - Attuned */
     , (45969, 151,          2) /* HookType - Wall */
     , (45969, 158,          7) /* WieldRequirements - Level */
     , (45969, 159,          1) /* WieldSkillType - Axe */
     , (45969, 160,          1) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45969,  11, True ) /* IgnoreCollisions */
     , (45969,  13, True ) /* Ethereal */
     , (45969,  14, True ) /* GravityStatus */
     , (45969,  19, True ) /* Attackable */
     , (45969,  22, True ) /* Inscribable */
     , (45969,  99, True ) /* Ivoryable */
     , (45969, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45969,   5, -0.02500000037252903) /* ManaRate */
     , (45969,  12, 0.6545000076293945) /* Shade */
     , (45969,  13,       1) /* ArmorModVsSlash */
     , (45969,  14,       1) /* ArmorModVsPierce */
     , (45969,  15,       1) /* ArmorModVsBludgeon */
     , (45969,  16, 0.6000000238418579) /* ArmorModVsCold */
     , (45969,  17, 0.6000000238418579) /* ArmorModVsFire */
     , (45969,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (45969,  19, 0.6000000238418579) /* ArmorModVsElectric */
     , (45969, 165,       0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45969,   1, 'Seasoned Explorer Helm') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45969,   1,   33559082) /* Setup */
     , (45969,   3,  536870932) /* SoundTable */
     , (45969,   6,   67108990) /* PaletteBase */
     , (45969,   7,  268437417) /* ClothingBase */
     , (45969,   8,  100691105) /* Icon */
     , (45969,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:58:03.5476417-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "removed spells, added palette and proper clothing base"
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
