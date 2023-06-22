DELETE FROM `weenie` WHERE `class_Id` = 45932;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45932, 'ace45932-seasonedexplorerstick', 6, '2023-06-13 07:05:07') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45932,   1,          1) /* ItemType - MeleeWeapon */
     , (45932,   3,          8) /* PaletteTemplate - Green */
     , (45932,   5,        200) /* EncumbranceVal */
     , (45932,   8,         90) /* Mass */
     , (45932,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (45932,  16,          1) /* ItemUseable - No */
     , (45932,  19,          1) /* Value */
     , (45932,  33,          1) /* Bonded - Bonded */
     , (45932,  44,         48) /* Damage */
     , (45932,  45,          4) /* DamageType - Bludgeon */
     , (45932,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (45932,  47,          6) /* AttackType - Thrust, Slash */
     , (45932,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (45932,  49,         30) /* WeaponTime */
     , (45932,  51,          1) /* CombatUse - Melee */
     , (45932,  52,          1) /* ParentLocation - RightHand */
     , (45932,  53,        101) /* PlacementPosition - Resting */
     , (45932,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45932, 106,        250) /* ItemSpellcraft */
     , (45932, 107,        400) /* ItemCurMana */
     , (45932, 108,        400) /* ItemMaxMana */
     , (45932, 109,        100) /* ItemDifficulty */
     , (45932, 114,          1) /* Attuned - Attuned */
     , (45932, 151,          2) /* HookType - Wall */
     , (45932, 158,          2) /* WieldRequirements - RawSkill */
     , (45932, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (45932, 160,          1) /* WieldDifficulty */
     , (45932, 263,          4) /* ResistanceModifierType */
     , (45932, 353,          7) /* WeaponType - Staff */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45932,  11, True ) /* IgnoreCollisions */
     , (45932,  13, True ) /* Ethereal */
     , (45932,  14, True ) /* GravityStatus */
     , (45932,  19, True ) /* Attackable */
     , (45932,  22, True ) /* Inscribable */
     , (45932,  69, False) /* IsSellable */
     , (45932,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45932,   5, -0.02500000037252903) /* ManaRate */
     , (45932,  12, 0.20000000298023224) /* Shade */
     , (45932,  21,       0) /* WeaponLength */
     , (45932,  22, 0.20000000298023224) /* DamageVariance */
     , (45932,  26,       0) /* MaximumVelocity */
     , (45932,  29, 1.1200000047683716) /* WeaponDefense */
     , (45932,  39, 0.6499999761581421) /* DefaultScale */
     , (45932,  62, 1.0399999618530273) /* WeaponOffense */
     , (45932,  63,       1) /* DamageMod */
     , (45932, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45932,   1, 'Seasoned Explorer Stick') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45932,   1,   33559625) /* Setup */
     , (45932,   3,  536870932) /* SoundTable */
     , (45932,   6,   67116700) /* PaletteBase */
     , (45932,   7,  268437029) /* ClothingBase */
     , (45932,   8,  100687991) /* Icon */
     , (45932,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:47:49.0480057-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "cloned from amateur explorer stick.  added ivoryable, attuned, changed palette to green, added spells"
    }
  ],
  "UserChangeSummary": "cloned from amateur explorer stick.  added ivoryable, attuned, changed palette to green, added spells",
  "IsDone": false
}
*/
