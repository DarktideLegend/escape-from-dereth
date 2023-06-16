DELETE FROM `weenie` WHERE `class_Id` = 45954;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45954, 'ace45954-seasonedexplorergreataxe', 6, '2023-06-13 07:05:07') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45954,   1,          1) /* ItemType - MeleeWeapon */
     , (45954,   3,          8) /* PaletteTemplate - Green */
     , (45954,   5,        400) /* EncumbranceVal */
     , (45954,   9,   33554432) /* ValidLocations - TwoHanded */
     , (45954,  16,          1) /* ItemUseable - No */
     , (45954,  19,          1) /* Value */
     , (45954,  33,          1) /* Bonded - Bonded */
     , (45954,  44,         32) /* Damage */
     , (45954,  45,          1) /* DamageType - Slash */
     , (45954,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (45954,  47,          4) /* AttackType - Slash */
     , (45954,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (45954,  49,          0) /* WeaponTime */
     , (45954,  51,          5) /* CombatUse - TwoHanded */
     , (45954,  53,        101) /* PlacementPosition - Resting */
     , (45954,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45954, 106,        250) /* ItemSpellcraft */
     , (45954, 107,        400) /* ItemCurMana */
     , (45954, 108,        400) /* ItemMaxMana */
     , (45954, 109,        100) /* ItemDifficulty */
     , (45954, 114,          1) /* Attuned - Attuned */
     , (45954, 151,          2) /* HookType - Wall */
     , (45954, 158,          2) /* WieldRequirements - RawSkill */
     , (45954, 159,         41) /* WieldSkillType - TwoHandedCombat */
     , (45954, 160,          1) /* WieldDifficulty */
     , (45954, 263,          1) /* ResistanceModifierType */
     , (45954, 292,          2) /* Cleaving */
     , (45954, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45954,  11, True ) /* IgnoreCollisions */
     , (45954,  13, True ) /* Ethereal */
     , (45954,  14, True ) /* GravityStatus */
     , (45954,  19, True ) /* Attackable */
     , (45954,  22, True ) /* Inscribable */
     , (45954,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45954,   5, -0.02500000037252903) /* ManaRate */
     , (45954,  12,       0) /* Shade */
     , (45954,  21,       0) /* WeaponLength */
     , (45954,  22, 0.28999999165534973) /* DamageVariance */
     , (45954,  26,       0) /* MaximumVelocity */
     , (45954,  29, 1.0800000429153442) /* WeaponDefense */
     , (45954,  62, 1.0800000429153442) /* WeaponOffense */
     , (45954,  63,       1) /* DamageMod */
     , (45954, 157,    2.25) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45954,   1, 'Seasoned Explorer Greataxe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45954,   1,   33560802) /* Setup */
     , (45954,   3,  536870932) /* SoundTable */
     , (45954,   6,   67115558) /* PaletteBase */
     , (45954,   7,  268437368) /* ClothingBase */
     , (45954,   8,  100690770) /* Icon */
     , (45954,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:47:19.6662807-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "added palette, shade and clothing base. adjusted stats to match yotes"
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "Zarto",
      "comment": "Added IntStat CombatUse (51) and set to Two Handed (5)"
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "Morosity",
      "comment": "Fixing Resistance mod"
    }
  ],
  "UserChangeSummary": "Fixing Resistance mod",
  "IsDone": false
}
*/
