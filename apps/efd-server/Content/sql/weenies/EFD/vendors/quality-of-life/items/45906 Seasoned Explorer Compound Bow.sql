DELETE FROM `weenie` WHERE `class_Id` = 45906;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45906, 'ace45906-seasonedexplorercompoundbow', 3, '2023-06-13 07:05:07') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45906,   1,        256) /* ItemType - MissileWeapon */
     , (45906,   3,          8) /* PaletteTemplate - Green */
     , (45906,   5,        200) /* EncumbranceVal */
     , (45906,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (45906,  16,          1) /* ItemUseable - No */
     , (45906,  18,       1024) /* UiEffects - Slashing */
     , (45906,  19,          1) /* Value */
     , (45906,  33,          1) /* Bonded - Bonded */
     , (45906,  44,          6) /* Damage */
     , (45906,  45,          1) /* DamageType - Slash */
     , (45906,  46,         16) /* DefaultCombatStyle - Bow */
     , (45906,  48,         47) /* WeaponSkill - MissileWeapons */
     , (45906,  49,         45) /* WeaponTime */
     , (45906,  50,          1) /* AmmoType - Arrow */
     , (45906,  51,          2) /* CombatUse - Missle */
     , (45906,  52,          2) /* ParentLocation - LeftHand */
     , (45906,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45906, 106,        250) /* ItemSpellcraft */
     , (45906, 107,        400) /* ItemCurMana */
     , (45906, 108,        400) /* ItemMaxMana */
     , (45906, 109,        100) /* ItemDifficulty */
     , (45906, 114,          1) /* Attuned - Attuned */
     , (45906, 151,          2) /* HookType - Wall */
     , (45906, 158,          2) /* WieldRequirements - RawSkill */
     , (45906, 159,         47) /* WieldSkillType - MissileWeapons */
     , (45906, 160,          1) /* WieldDifficulty */
     , (45906, 204,          2) /* ElementalDamageBonus */
     , (45906, 263,          1) /* ResistanceModifierType */
     , (45906, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45906,  11, True ) /* IgnoreCollisions */
     , (45906,  13, True ) /* Ethereal */
     , (45906,  14, True ) /* GravityStatus */
     , (45906,  19, True ) /* Attackable */
     , (45906,  22, True ) /* Inscribable */
     , (45906,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45906,   5, -0.02500000037252903) /* ManaRate */
     , (45906,  21,       0) /* WeaponLength */
     , (45906,  22,       0) /* DamageVariance */
     , (45906,  26, 27.299999237060547) /* MaximumVelocity */
     , (45906,  29, 1.0800000429153442) /* WeaponDefense */
     , (45906,  39, 1.100000023841858) /* DefaultScale */
     , (45906,  62,       1) /* WeaponOffense */
     , (45906,  63, 2.299999952316284) /* DamageMod */
     , (45906, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45906,   1, 'Seasoned Explorer Compound Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45906,   1,   33559688) /* Setup */
     , (45906,   3,  536870932) /* SoundTable */
     , (45906,   6,   67116700) /* PaletteBase */
     , (45906,   7,  268437037) /* ClothingBase */
     , (45906,   8,  100688046) /* Icon */
     , (45906,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:48:20.556723-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "added clothing base and palette\n"
    }
  ],
  "UserChangeSummary": "added clothing base and palette\n",
  "IsDone": false
}
*/
