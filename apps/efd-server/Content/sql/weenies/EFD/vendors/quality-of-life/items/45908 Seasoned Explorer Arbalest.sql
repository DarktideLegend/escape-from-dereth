DELETE FROM `weenie` WHERE `class_Id` = 45908;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45908, 'ace45908-seasonedexplorerarbalest', 3, '2023-06-13 07:05:07') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45908,   1,        256) /* ItemType - MissileWeapon */
     , (45908,   3,          8) /* PaletteTemplate - Green */
     , (45908,   5,        200) /* EncumbranceVal */
     , (45908,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (45908,  16,          1) /* ItemUseable - No */
     , (45908,  18,       1024) /* UiEffects - Slashing */
     , (45908,  19,          1) /* Value */
     , (45908,  33,          1) /* Bonded - Bonded */
     , (45908,  44,          6) /* Damage */
     , (45908,  45,          1) /* DamageType - Slash */
     , (45908,  46,         32) /* DefaultCombatStyle - Crossbow */
     , (45908,  48,         47) /* WeaponSkill - MissileWeapons */
     , (45908,  49,        120) /* WeaponTime */
     , (45908,  50,          2) /* AmmoType - Bolt */
     , (45908,  51,          2) /* CombatUse - Missle */
     , (45908,  52,          2) /* ParentLocation - LeftHand */
     , (45908,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45908, 106,        250) /* ItemSpellcraft */
     , (45908, 107,        400) /* ItemCurMana */
     , (45908, 108,        400) /* ItemMaxMana */
     , (45908, 109,        100) /* ItemDifficulty */
     , (45908, 114,          1) /* Attuned - Attuned */
     , (45908, 151,          2) /* HookType - Wall */
     , (45908, 158,          2) /* WieldRequirements - RawSkill */
     , (45908, 159,         47) /* WieldSkillType - MissileWeapons */
     , (45908, 160,          1) /* WieldDifficulty */
     , (45908, 204,          2) /* ElementalDamageBonus */
     , (45908, 263,          1) /* ResistanceModifierType */
     , (45908, 353,          9) /* WeaponType - Crossbow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45908,  11, True ) /* IgnoreCollisions */
     , (45908,  13, True ) /* Ethereal */
     , (45908,  14, True ) /* GravityStatus */
     , (45908,  19, True ) /* Attackable */
     , (45908,  22, True ) /* Inscribable */
     , (45908,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45908,   5, -0.02500000037252903) /* ManaRate */
     , (45908,  21,       0) /* WeaponLength */
     , (45908,  22,       0) /* DamageVariance */
     , (45908,  26, 27.299999237060547) /* MaximumVelocity */
     , (45908,  29, 1.0800000429153442) /* WeaponDefense */
     , (45908,  39,    1.25) /* DefaultScale */
     , (45908,  62,       1) /* WeaponOffense */
     , (45908,  63,     2.5) /* DamageMod */
     , (45908, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45908,   1, 'Seasoned Explorer Arbalest') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45908,   1,   33559303) /* Setup */
     , (45908,   3,  536870932) /* SoundTable */
     , (45908,   6,   67115556) /* PaletteBase */
     , (45908,   7,  268437003) /* ClothingBase */
     , (45908,   8,  100687039) /* Icon */
     , (45908,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:49:33.7053876-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "update to eor"
    }
  ],
  "UserChangeSummary": "update to eor",
  "IsDone": false
}
*/
