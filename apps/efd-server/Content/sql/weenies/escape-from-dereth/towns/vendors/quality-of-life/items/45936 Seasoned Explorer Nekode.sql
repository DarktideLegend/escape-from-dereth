DELETE FROM `weenie` WHERE `class_Id` = 45936;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45936, 'ace45936-seasonedexplorernekode', 6, '2023-06-13 07:05:07') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45936,   1,          1) /* ItemType - MeleeWeapon */
     , (45936,   3,          8) /* PaletteTemplate - Green */
     , (45936,   5,        200) /* EncumbranceVal */
     , (45936,   8,         80) /* Mass */
     , (45936,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (45936,  16,          1) /* ItemUseable - No */
     , (45936,  19,          1) /* Value */
     , (45936,  33,          1) /* Bonded - Bonded */
     , (45936,  44,         44) /* Damage */
     , (45936,  45,          3) /* DamageType - Slash, Pierce */
     , (45936,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (45936,  47,          5) /* AttackType - Punch, Slash */
     , (45936,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (45936,  49,         20) /* WeaponTime */
     , (45936,  51,          1) /* CombatUse - Melee */
     , (45936,  53,        101) /* PlacementPosition - Resting */
     , (45936,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45936, 106,        250) /* ItemSpellcraft */
     , (45936, 107,        400) /* ItemCurMana */
     , (45936, 108,        400) /* ItemMaxMana */
     , (45936, 109,        100) /* ItemDifficulty */
     , (45936, 114,          1) /* Attuned - Attuned */
     , (45936, 151,          2) /* HookType - Wall */
     , (45936, 158,          2) /* WieldRequirements - RawSkill */
     , (45936, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (45936, 160,          1) /* WieldDifficulty */
     , (45936, 263,          1) /* ResistanceModifierType */
     , (45936, 353,          1) /* WeaponType - Unarmed */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45936,  11, True ) /* IgnoreCollisions */
     , (45936,  13, True ) /* Ethereal */
     , (45936,  14, True ) /* GravityStatus */
     , (45936,  19, True ) /* Attackable */
     , (45936,  22, True ) /* Inscribable */
     , (45936,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45936,   5, -0.02500000037252903) /* ManaRate */
     , (45936,  12,       0) /* Shade */
     , (45936,  21, 0.5199999809265137) /* WeaponLength */
     , (45936,  22, 0.3400000035762787) /* DamageVariance */
     , (45936,  26,       0) /* MaximumVelocity */
     , (45936,  29, 1.0800000429153442) /* WeaponDefense */
     , (45936,  39,       0) /* DefaultScale */
     , (45936,  62, 1.0800000429153442) /* WeaponOffense */
     , (45936,  63,       1) /* DamageMod */
     , (45936, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45936,   1, 'Seasoned Explorer Nekode') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45936,   1,   33555996) /* Setup */
     , (45936,   3,  536870932) /* SoundTable */
     , (45936,   6,   67111919) /* PaletteBase */
     , (45936,   7,  268435828) /* ClothingBase */
     , (45936,   8,  100670029) /* Icon */
     , (45936,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:49:07.9683551-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "cloned from amateur explorer nekode. added ivoryabl, and attuned, changed palette to green, add spells"
    }
  ],
  "UserChangeSummary": "cloned from amateur explorer nekode. added ivoryabl, and attuned, changed palette to green, add spells",
  "IsDone": false
}
*/
