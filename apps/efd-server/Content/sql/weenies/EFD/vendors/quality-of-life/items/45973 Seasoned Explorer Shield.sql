DELETE FROM `weenie` WHERE `class_Id` = 45973;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45973, 'ace45973-seasonedexplorershield', 1, '2023-06-13 07:05:07') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45973,   1,          2) /* ItemType - Armor */
     , (45973,   3,          4) /* PaletteTemplate - Brown */
     , (45973,   5,        800) /* EncumbranceVal */
     , (45973,   9,    2097152) /* ValidLocations - Shield */
     , (45973,  16,          1) /* ItemUseable - No */
     , (45973,  19,          1) /* Value */
     , (45973,  28,        120) /* ArmorLevel */
     , (45973,  33,          1) /* Bonded - Bonded */
     , (45973,  51,          4) /* CombatUse - Shield */
     , (45973,  52,          3) /* ParentLocation - Shield */
     , (45973,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45973, 106,        250) /* ItemSpellcraft */
     , (45973, 107,        400) /* ItemCurMana */
     , (45973, 108,        400) /* ItemMaxMana */
     , (45973, 109,        100) /* ItemDifficulty */
     , (45973, 114,          1) /* Attuned - Attuned */
     , (45973, 150,        103) /* HookPlacement - Hook */
     , (45973, 151,          2) /* HookType - Wall */
     , (45973, 158,          7) /* WieldRequirements - Level */
     , (45973, 159,          0) /* WieldSkillType - None */
     , (45973, 160,          1) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45973,  11, True ) /* IgnoreCollisions */
     , (45973,  13, True ) /* Ethereal */
     , (45973,  14, True ) /* GravityStatus */
     , (45973,  19, True ) /* Attackable */
     , (45973,  22, True ) /* Inscribable */
     , (45973,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45973,   5, -0.02500000037252903) /* ManaRate */
     , (45973,  12,       0) /* Shade */
     , (45973,  13,       1) /* ArmorModVsSlash */
     , (45973,  14,       1) /* ArmorModVsPierce */
     , (45973,  15,       1) /* ArmorModVsBludgeon */
     , (45973,  16, 0.6000000238418579) /* ArmorModVsCold */
     , (45973,  17, 0.6000000238418579) /* ArmorModVsFire */
     , (45973,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (45973,  19, 0.6000000238418579) /* ArmorModVsElectric */
     , (45973,  39,       1) /* DefaultScale */
     , (45973, 110,       1) /* BulkMod */
     , (45973, 111, 1.100000023841858) /* SizeMod */
     , (45973, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45973,   1, 'Seasoned Explorer Shield') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45973,   1,   33554788) /* Setup */
     , (45973,   3,  536870932) /* SoundTable */
     , (45973,   6,   67111919) /* PaletteBase */
     , (45973,   7,  268435609) /* ClothingBase */
     , (45973,   8,  100667360) /* Icon */
     , (45973,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:54:46.0463409-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "add spells"
    }
  ],
  "UserChangeSummary": "add spells",
  "IsDone": false
}
*/
