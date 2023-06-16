DELETE FROM `weenie` WHERE `class_Id` = 70223;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (70223, 'ace70223-seasonedexplorerclaw', 6, '2023-06-13 07:05:07') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (70223,   1,          1) /* ItemType - MeleeWeapon */
     , (70223,   3,          8) /* PaletteTemplate - Green */
     , (70223,   5,        200) /* EncumbranceVal */
     , (70223,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (70223,  16,          1) /* ItemUseable - No */
     , (70223,  19,          1) /* Value */
     , (70223,  33,          1) /* Bonded - Bonded */
     , (70223,  44,         37) /* Damage */
     , (70223,  45,          3) /* DamageType - Slash, Pierce */
     , (70223,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (70223,  47,          1) /* AttackType - Punch */
     , (70223,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (70223,  49,         20) /* WeaponTime */
     , (70223,  51,          1) /* CombatUse - Melee */
     , (70223,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (70223, 106,        250) /* ItemSpellcraft */
     , (70223, 107,        400) /* ItemCurMana */
     , (70223, 108,        400) /* ItemMaxMana */
     , (70223, 109,        100) /* ItemDifficulty */
     , (70223, 114,          1) /* Attuned - Attuned */
     , (70223, 150,        103) /* HookPlacement - Hook */
     , (70223, 151,          2) /* HookType - Wall */
     , (70223, 158,          2) /* WieldRequirements - RawSkill */
     , (70223, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (70223, 160,          1) /* WieldDifficulty */
     , (70223, 263,          1) /* ResistanceModifierType */
     , (70223, 353,          1) /* WeaponType - Unarmed */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (70223,  22, True ) /* Inscribable */
     , (70223,  69, False) /* IsSellable */
     , (70223,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (70223,   5, -0.02500000037252903) /* ManaRate */
     , (70223,  12,       0) /* Shade */
     , (70223,  21, 0.949999988079071) /* WeaponLength */
     , (70223,  22, 0.3400000035762787) /* DamageVariance */
     , (70223,  29, 1.0800000429153442) /* WeaponDefense */
     , (70223,  39, 0.8999999761581421) /* DefaultScale */
     , (70223,  62, 1.0800000429153442) /* WeaponOffense */
     , (70223, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (70223,   1, 'Seasoned Explorer Claw') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (70223,   1,   33559624) /* Setup */
     , (70223,   3,  536870932) /* SoundTable */
     , (70223,   6,   67116700) /* PaletteBase */
     , (70223,   7,  268437038) /* ClothingBase */
     , (70223,   8,  100688075) /* Icon */
     , (70223,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T04:13:12.2970312-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "ACE.Adapter",
      "comment": "Weenie exported from ACEmulator world database using ACE.Adapter"
    }
  ],
  "UserChangeSummary": "test",
  "IsDone": false
}
*/
