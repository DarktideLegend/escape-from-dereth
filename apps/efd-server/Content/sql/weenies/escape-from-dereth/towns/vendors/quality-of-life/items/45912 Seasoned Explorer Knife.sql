DELETE FROM `weenie` WHERE `class_Id` = 45912;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45912, 'ace45912-seasonedexplorerknife', 6, '2023-06-13 07:05:07') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45912,   1,          1) /* ItemType - MeleeWeapon */
     , (45912,   3,          8) /* PaletteTemplate - Green */
     , (45912,   5,        200) /* EncumbranceVal */
     , (45912,   8,         25) /* Mass */
     , (45912,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (45912,  16,          1) /* ItemUseable - No */
     , (45912,  19,          1) /* Value */
     , (45912,  33,          1) /* Bonded - Bonded */
     , (45912,  44,         42) /* Damage */
     , (45912,  45,          1) /* DamageType - Slash */
     , (45912,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (45912,  47,          4) /* AttackType - Slash */
     , (45912,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (45912,  49,         10) /* WeaponTime */
     , (45912,  51,          1) /* CombatUse - Melee */
     , (45912,  52,          1) /* ParentLocation - RightHand */
     , (45912,  53,        101) /* PlacementPosition - Resting */
     , (45912,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45912, 106,        250) /* ItemSpellcraft */
     , (45912, 107,        400) /* ItemCurMana */
     , (45912, 108,        400) /* ItemMaxMana */
     , (45912, 109,        100) /* ItemDifficulty */
     , (45912, 114,          1) /* Attuned - Attuned */
     , (45912, 151,          2) /* HookType - Wall */
     , (45912, 158,          2) /* WieldRequirements - RawSkill */
     , (45912, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (45912, 160,          1) /* WieldDifficulty */
     , (45912, 263,          1) /* ResistanceModifierType */
     , (45912, 353,          6) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45912,  11, True ) /* IgnoreCollisions */
     , (45912,  13, True ) /* Ethereal */
     , (45912,  14, True ) /* GravityStatus */
     , (45912,  19, True ) /* Attackable */
     , (45912,  22, True ) /* Inscribable */
     , (45912,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45912,   5, -0.02500000037252903) /* ManaRate */
     , (45912,  12,       0) /* Shade */
     , (45912,  21,       0) /* WeaponLength */
     , (45912,  22, 0.2800000011920929) /* DamageVariance */
     , (45912,  26,       0) /* MaximumVelocity */
     , (45912,  29, 1.0800000429153442) /* WeaponDefense */
     , (45912,  39,    1.25) /* DefaultScale */
     , (45912,  62, 1.0800000429153442) /* WeaponOffense */
     , (45912,  63,       1) /* DamageMod */
     , (45912, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45912,   1, 'Seasoned Explorer Knife') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45912,   1,   33554745) /* Setup */
     , (45912,   3,  536870932) /* SoundTable */
     , (45912,   6,   67111919) /* PaletteBase */
     , (45912,   7,  268435791) /* ClothingBase */
     , (45912,   8,  100668950) /* Icon */
     , (45912,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:50:13.0269453-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "cloned from amateur explorer nekode. adjusted stats to match wiki. no pcap\n"
    }
  ],
  "UserChangeSummary": "cloned from amateur explorer nekode. adjusted stats to match wiki. no pcap\n",
  "IsDone": false
}
*/
