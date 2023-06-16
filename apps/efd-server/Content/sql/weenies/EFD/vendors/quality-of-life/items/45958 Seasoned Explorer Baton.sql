DELETE FROM `weenie` WHERE `class_Id` = 45958;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45958, 'ace45958-seasonedexplorerbaton', 35, '2023-06-13 07:05:07') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45958,   1,      32768) /* ItemType - Caster */
     , (45958,   3,          8) /* PaletteTemplate - Green */
     , (45958,   5,         50) /* EncumbranceVal */
     , (45958,   9,   16777216) /* ValidLocations - Held */
     , (45958,  16,          1) /* ItemUseable - No */
     , (45958,  18,       1024) /* UiEffects - Slashing */
     , (45958,  19,          1) /* Value */
     , (45958,  33,          1) /* Bonded - Bonded */
     , (45958,  45,          1) /* DamageType - Slash */
     , (45958,  46,        512) /* DefaultCombatStyle - Magic */
     , (45958,  52,          1) /* ParentLocation - RightHand */
     , (45958,  53,          1) /* PlacementPosition - RightHandCombat */
     , (45958,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45958,  94,         16) /* TargetType - Creature */
     , (45958, 106,        250) /* ItemSpellcraft */
     , (45958, 107,        400) /* ItemCurMana */
     , (45958, 108,        400) /* ItemMaxMana */
     , (45958, 109,        100) /* ItemDifficulty */
     , (45958, 114,          1) /* Attuned - Attuned */
     , (45958, 151,          2) /* HookType - Wall */
     , (45958, 158,          1) /* WieldRequirements - Skill */
     , (45958, 159,         34) /* WieldSkillType - WarMagic */
     , (45958, 160,          1) /* WieldDifficulty */
     , (45958, 263,          1) /* ResistanceModifierType */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45958,  11, True ) /* IgnoreCollisions */
     , (45958,  13, True ) /* Ethereal */
     , (45958,  14, True ) /* GravityStatus */
     , (45958,  19, True ) /* Attackable */
     , (45958,  22, True ) /* Inscribable */
     , (45958,  69, False) /* IsSellable */
     , (45958,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45958,   5, -0.02500000037252903) /* ManaRate */
     , (45958,  12, 0.8181999921798706) /* Shade */
     , (45958,  29, 1.0800000429153442) /* WeaponDefense */
     , (45958,  39,     1.5) /* DefaultScale */
     , (45958, 144, 0.07999999821186066) /* ManaConversionMod */
     , (45958, 152, 1.100000023841858) /* ElementalDamageMod */
     , (45958, 157,       2) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45958,   1, 'Seasoned Explorer Baton') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45958,   1,   33559697) /* Setup */
     , (45958,   3,  536870932) /* SoundTable */
     , (45958,   6,   67116700) /* PaletteBase */
     , (45958,   7,  268437034) /* ClothingBase */
     , (45958,   8,  100688013) /* Icon */
     , (45958,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:45:58.5430903-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "cloned from amateur explorer baton. add palette, shade and clothing base. spells, attuned, ivoryable"
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "Morosity",
      "comment": "Resistance mod float"
    }
  ],
  "UserChangeSummary": "Resistance mod float",
  "IsDone": false
}
*/
