DELETE FROM `weenie` WHERE `class_Id` = 45944;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45944, 'ace45944-seasonedexploreryari', 6, '2023-06-13 07:05:07') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45944,   1,          1) /* ItemType - MeleeWeapon */
     , (45944,   3,          8) /* PaletteTemplate - Green */
     , (45944,   5,        200) /* EncumbranceVal */
     , (45944,   8,         80) /* Mass */
     , (45944,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (45944,  16,          1) /* ItemUseable - No */
     , (45944,  19,          1) /* Value */
     , (45944,  33,          1) /* Bonded - Bonded */
     , (45944,  44,         43) /* Damage */
     , (45944,  45,          2) /* DamageType - Pierce */
     , (45944,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (45944,  47,          2) /* AttackType - Thrust */
     , (45944,  48,         45) /* WeaponSkill - LightWeapons */
     , (45944,  49,         30) /* WeaponTime */
     , (45944,  51,          1) /* CombatUse - Melee */
     , (45944,  52,          1) /* ParentLocation - RightHand */
     , (45944,  53,        101) /* PlacementPosition - Resting */
     , (45944,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45944, 106,        250) /* ItemSpellcraft */
     , (45944, 107,        400) /* ItemCurMana */
     , (45944, 108,        400) /* ItemMaxMana */
     , (45944, 109,        100) /* ItemDifficulty */
     , (45944, 114,          1) /* Attuned - Attuned */
     , (45944, 151,          2) /* HookType - Wall */
     , (45944, 158,          2) /* WieldRequirements - RawSkill */
     , (45944, 159,         45) /* WieldSkillType - LightWeapons */
     , (45944, 160,          1) /* WieldDifficulty */
     , (45944, 263,          2) /* ResistanceModifierType */
     , (45944, 353,          5) /* WeaponType - Spear */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45944,  11, True ) /* IgnoreCollisions */
     , (45944,  13, True ) /* Ethereal */
     , (45944,  14, True ) /* GravityStatus */
     , (45944,  19, True ) /* Attackable */
     , (45944,  22, True ) /* Inscribable */
     , (45944,  69, False) /* IsSellable */
     , (45944,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45944,   5, -0.02500000037252903) /* ManaRate */
     , (45944,  12,       0) /* Shade */
     , (45944,  21,       1) /* WeaponLength */
     , (45944,  22, 0.33000001311302185) /* DamageVariance */
     , (45944,  26,       0) /* MaximumVelocity */
     , (45944,  29, 1.0399999618530273) /* WeaponDefense */
     , (45944,  62, 1.1200000047683716) /* WeaponOffense */
     , (45944,  63,       1) /* DamageMod */
     , (45944,  77,       1) /* PhysicsScriptIntensity */
     , (45944, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45944,   1, 'Seasoned Explorer Yari') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45944,   1,   33554824) /* Setup */
     , (45944,   3,  536870932) /* SoundTable */
     , (45944,   6,   67111919) /* PaletteBase */
     , (45944,   7,  268435777) /* ClothingBase */
     , (45944,   8,  100669088) /* Icon */
     , (45944,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:51:23.7746095-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "cloned from amateur explorer yari. added ivoryable, attuned, changed palette to green, added spells "
    }
  ],
  "UserChangeSummary": "cloned from amateur explorer yari. added ivoryable, attuned, changed palette to green, added spells ",
  "IsDone": false
}
*/
