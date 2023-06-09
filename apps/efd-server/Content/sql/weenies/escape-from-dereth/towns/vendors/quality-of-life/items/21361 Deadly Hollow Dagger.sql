DELETE FROM `weenie` WHERE `class_Id` = 21361;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (21361, 'daggerhollownew', 6, '2023-06-13 07:05:07') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (21361,   1,          1) /* ItemType - MeleeWeapon */
     , (21361,   3,         20) /* PaletteTemplate - Silver */
     , (21361,   5,        135) /* EncumbranceVal */
     , (21361,   8,         90) /* Mass */
     , (21361,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (21361,  16,          1) /* ItemUseable - No */
     , (21361,  19,          1) /* Value */
     , (21361,  33,          1) /* Bonded - Bonded */
     , (21361,  36,       9999) /* ResistMagic */
     , (21361,  44,         70) /* Damage */
     , (21361,  45,          3) /* DamageType - Slash, Pierce */
     , (21361,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (21361,  47,          6) /* AttackType - Thrust, Slash */
     , (21361,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (21361,  49,         20) /* WeaponTime */
     , (21361,  51,          1) /* CombatUse - Melee */
     , (21361,  52,          1) /* ParentLocation - RightHand */
     , (21361,  53,          1) /* PlacementPosition - RightHandCombat */
     , (21361,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (21361, 114,          1) /* Attuned - Attuned */
     , (21361, 150,        103) /* HookPlacement - Hook */
     , (21361, 151,          2) /* HookType - Wall */
     , (21361, 158,          2) /* WieldRequirements - RawSkill */
     , (21361, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (21361, 160,        250) /* WieldDifficulty */
     , (21361, 353,          6) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (21361,  11, True ) /* IgnoreCollisions */
     , (21361,  13, True ) /* Ethereal */
     , (21361,  14, True ) /* GravityStatus */
     , (21361,  15, True ) /* LightsStatus */
     , (21361,  19, True ) /* Attackable */
     , (21361,  22, True ) /* Inscribable */
     , (21361,  23, True ) /* DestroyOnSell */
     , (21361,  65, True ) /* IgnoreMagicResist */
     , (21361,  66, True ) /* IgnoreMagicArmor */
     , (21361,  69, False) /* IsSellable */
     , (21361,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (21361,  21, 0.4000000059604645) /* WeaponLength */
     , (21361,  22, 0.30000001192092896) /* DamageVariance */
     , (21361,  26,       0) /* MaximumVelocity */
     , (21361,  29,       1) /* WeaponDefense */
     , (21361,  62, 1.100000023841858) /* WeaponOffense */
     , (21361,  63,       1) /* DamageMod */
     , (21361,  76, 0.699999988079071) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (21361,   1, 'Deadly Hollow Dagger') /* Name */
     , (21361,  15, 'A dagger crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (21361,  16, 'A dagger crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (21361,   1,   33556650) /* Setup */
     , (21361,   3,  536870932) /* SoundTable */
     , (21361,   6,   67111919) /* PaletteBase */
     , (21361,   7,  268435783) /* ClothingBase */
     , (21361,   8,  100668875) /* Icon */
     , (21361,  22,  872415275) /* PhysicsEffectTable */
     , (21361,  36,  234881044) /* MutateFilter */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-29T22:06:38.5273232-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "CrimsonMage",
      "comment": "Updated Skill - Damage - Done"
    }
  ],
  "UserChangeSummary": "Updated Skill - Damage - Done",
  "IsDone": true
}
*/
