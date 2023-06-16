DELETE FROM `weenie` WHERE `class_Id` = 45948;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45948, 'ace45948-seasonedexplorershamshir', 6, '2023-06-13 07:05:07') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45948,   1,          1) /* ItemType - MeleeWeapon */
     , (45948,   3,          8) /* PaletteTemplate - Green */
     , (45948,   5,        200) /* EncumbranceVal */
     , (45948,   8,         90) /* Mass */
     , (45948,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (45948,  16,          1) /* ItemUseable - No */
     , (45948,  19,          1) /* Value */
     , (45948,  33,          1) /* Bonded - Bonded */
     , (45948,  44,         42) /* Damage */
     , (45948,  45,          3) /* DamageType - Slash, Pierce */
     , (45948,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (45948,  47,          6) /* AttackType - Thrust, Slash */
     , (45948,  48,         45) /* WeaponSkill - LightWeapons */
     , (45948,  49,         40) /* WeaponTime */
     , (45948,  51,          1) /* CombatUse - Melee */
     , (45948,  52,          1) /* ParentLocation - RightHand */
     , (45948,  53,        101) /* PlacementPosition - Resting */
     , (45948,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45948, 106,        250) /* ItemSpellcraft */
     , (45948, 107,        400) /* ItemCurMana */
     , (45948, 108,        400) /* ItemMaxMana */
     , (45948, 109,        100) /* ItemDifficulty */
     , (45948, 114,          1) /* Attuned - Attuned */
     , (45948, 150,        103) /* HookPlacement - Hook */
     , (45948, 151,          2) /* HookType - Wall */
     , (45948, 158,          2) /* WieldRequirements - RawSkill */
     , (45948, 159,         45) /* WieldSkillType - LightWeapons */
     , (45948, 160,          1) /* WieldDifficulty */
     , (45948, 263,          1) /* ResistanceModifierType */
     , (45948, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45948,  11, True ) /* IgnoreCollisions */
     , (45948,  13, True ) /* Ethereal */
     , (45948,  14, True ) /* GravityStatus */
     , (45948,  19, True ) /* Attackable */
     , (45948,  22, True ) /* Inscribable */
     , (45948,  69, False) /* IsSellable */
     , (45948,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45948,   5, -0.02500000037252903) /* ManaRate */
     , (45948,  21,       1) /* WeaponLength */
     , (45948,  22,    0.25) /* DamageVariance */
     , (45948,  26,       0) /* MaximumVelocity */
     , (45948,  29, 1.0800000429153442) /* WeaponDefense */
     , (45948,  39,       1) /* DefaultScale */
     , (45948,  62, 1.0800000429153442) /* WeaponOffense */
     , (45948,  63,       1) /* DamageMod */
     , (45948,  77,       1) /* PhysicsScriptIntensity */
     , (45948, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45948,   1, 'Seasoned Explorer Shamshir') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45948,   1,   33554750) /* Setup */
     , (45948,   3,  536870932) /* SoundTable */
     , (45948,   6,   67111919) /* PaletteBase */
     , (45948,   7,  268435765) /* ClothingBase */
     , (45948,   8,  100668978) /* Icon */
     , (45948,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:51:39.2410981-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "cloned from amateur explorer shamshir. added ivoryable, attuned, changed palette to green, added spells"
    }
  ],
  "UserChangeSummary": "cloned from amateur explorer shamshir. added ivoryable, attuned, changed palette to green, added spells",
  "IsDone": true
}
*/
