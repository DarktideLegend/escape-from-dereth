DELETE FROM `weenie` WHERE `class_Id` = 45934;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45934, 'ace45934-seasonedexplorerken', 6, '2023-06-13 07:05:07') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45934,   1,          1) /* ItemType - MeleeWeapon */
     , (45934,   3,          8) /* PaletteTemplate - Green */
     , (45934,   5,        200) /* EncumbranceVal */
     , (45934,   8,         90) /* Mass */
     , (45934,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (45934,  16,          1) /* ItemUseable - No */
     , (45934,  19,          1) /* Value */
     , (45934,  33,          1) /* Bonded - Bonded */
     , (45934,  44,         49) /* Damage */
     , (45934,  45,          3) /* DamageType - Slash, Pierce */
     , (45934,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (45934,  47,          6) /* AttackType - Thrust, Slash */
     , (45934,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (45934,  49,         40) /* WeaponTime */
     , (45934,  51,          1) /* CombatUse - Melee */
     , (45934,  52,          1) /* ParentLocation - RightHand */
     , (45934,  53,        101) /* PlacementPosition - Resting */
     , (45934,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45934, 106,        250) /* ItemSpellcraft */
     , (45934, 107,        400) /* ItemCurMana */
     , (45934, 108,        400) /* ItemMaxMana */
     , (45934, 109,        100) /* ItemDifficulty */
     , (45934, 114,          1) /* Attuned - Attuned */
     , (45934, 150,        103) /* HookPlacement - Hook */
     , (45934, 151,          2) /* HookType - Wall */
     , (45934, 158,          2) /* WieldRequirements - RawSkill */
     , (45934, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (45934, 160,          1) /* WieldDifficulty */
     , (45934, 263,          1) /* ResistanceModifierType */
     , (45934, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45934,  11, True ) /* IgnoreCollisions */
     , (45934,  13, True ) /* Ethereal */
     , (45934,  14, True ) /* GravityStatus */
     , (45934,  19, True ) /* Attackable */
     , (45934,  22, True ) /* Inscribable */
     , (45934,  69, False) /* IsSellable */
     , (45934,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45934,   5, -0.02500000037252903) /* ManaRate */
     , (45934,  21,       1) /* WeaponLength */
     , (45934,  22,    0.25) /* DamageVariance */
     , (45934,  26,       0) /* MaximumVelocity */
     , (45934,  29, 1.0800000429153442) /* WeaponDefense */
     , (45934,  39,       1) /* DefaultScale */
     , (45934,  62, 1.0800000429153442) /* WeaponOffense */
     , (45934,  63,       1) /* DamageMod */
     , (45934,  77,       1) /* PhysicsScriptIntensity */
     , (45934, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45934,   1, 'Seasoned Explorer Ken') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45934,   1,   33554759) /* Setup */
     , (45934,   3,  536870932) /* SoundTable */
     , (45934,   6,   67111919) /* PaletteBase */
     , (45934,   7,  268435771) /* ClothingBase */
     , (45934,   8,  100669018) /* Icon */
     , (45934,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:50:54.6972914-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "cloned from amateur explorer ken, add ivoryable, and attuned, added spells"
    }
  ],
  "UserChangeSummary": "cloned from amateur explorer ken, add ivoryable, and attuned, added spells",
  "IsDone": true
}
*/
