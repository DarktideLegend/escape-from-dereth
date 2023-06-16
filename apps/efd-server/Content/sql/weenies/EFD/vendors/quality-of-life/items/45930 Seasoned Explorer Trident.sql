DELETE FROM `weenie` WHERE `class_Id` = 45930;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45930, 'ace45930-seasonedexplorertrident', 6, '2023-06-13 07:05:07') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45930,   1,          1) /* ItemType - MeleeWeapon */
     , (45930,   3,          8) /* PaletteTemplate - Green */
     , (45930,   5,        200) /* EncumbranceVal */
     , (45930,   8,        150) /* Mass */
     , (45930,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (45930,  16,          1) /* ItemUseable - No */
     , (45930,  19,          1) /* Value */
     , (45930,  33,          1) /* Bonded - Bonded */
     , (45930,  44,         50) /* Damage */
     , (45930,  45,          2) /* DamageType - Pierce */
     , (45930,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (45930,  47,          2) /* AttackType - Thrust */
     , (45930,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (45930,  49,         55) /* WeaponTime */
     , (45930,  51,          1) /* CombatUse - Melee */
     , (45930,  52,          1) /* ParentLocation - RightHand */
     , (45930,  53,        101) /* PlacementPosition - Resting */
     , (45930,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45930, 106,        250) /* ItemSpellcraft */
     , (45930, 107,        400) /* ItemCurMana */
     , (45930, 108,        400) /* ItemMaxMana */
     , (45930, 109,        100) /* ItemDifficulty */
     , (45930, 114,          1) /* Attuned - Attuned */
     , (45930, 151,          2) /* HookType - Wall */
     , (45930, 158,          2) /* WieldRequirements - RawSkill */
     , (45930, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (45930, 160,          1) /* WieldDifficulty */
     , (45930, 263,          2) /* ResistanceModifierType */
     , (45930, 353,          5) /* WeaponType - Spear */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45930,  11, True ) /* IgnoreCollisions */
     , (45930,  13, True ) /* Ethereal */
     , (45930,  14, True ) /* GravityStatus */
     , (45930,  19, True ) /* Attackable */
     , (45930,  22, True ) /* Inscribable */
     , (45930,  69, False) /* IsSellable */
     , (45930,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45930,   5, -0.02500000037252903) /* ManaRate */
     , (45930,  12,       0) /* Shade */
     , (45930,  21, 1.2999999523162842) /* WeaponLength */
     , (45930,  22, 0.27000001072883606) /* DamageVariance */
     , (45930,  26,       0) /* MaximumVelocity */
     , (45930,  29, 1.0399999618530273) /* WeaponDefense */
     , (45930,  39, 1.2000000476837158) /* DefaultScale */
     , (45930,  62, 1.1200000047683716) /* WeaponOffense */
     , (45930,  63,       1) /* DamageMod */
     , (45930, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45930,   1, 'Seasoned Explorer Trident') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45930,   1,   33556641) /* Setup */
     , (45930,   3,  536870932) /* SoundTable */
     , (45930,   6,   67111919) /* PaletteBase */
     , (45930,   7,  268436013) /* ClothingBase */
     , (45930,   8,  100670792) /* Icon */
     , (45930,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T04:21:52.7900913-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "cloned from amateur explorer trident. added ivoryable, attuned, changed palette to green, added spells "
    }
  ],
  "UserChangeSummary": "cloned from amateur explorer trident. added ivoryable, attuned, changed palette to green, added spells ",
  "IsDone": false
}
*/
