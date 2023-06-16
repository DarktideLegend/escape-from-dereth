DELETE FROM `weenie` WHERE `class_Id` = 45956;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45956, 'ace45956-seasonedexplorernetherstaff', 35, '2023-06-13 07:05:07') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45956,   1,      32768) /* ItemType - Caster */
     , (45956,   3,          8) /* PaletteTemplate - Green */
     , (45956,   5,         50) /* EncumbranceVal */
     , (45956,   9,   16777216) /* ValidLocations - Held */
     , (45956,  16,          1) /* ItemUseable - No */
     , (45956,  19,          1) /* Value */
     , (45956,  33,          1) /* Bonded - Bonded */
     , (45956,  45,       1024) /* DamageType - Nether */
     , (45956,  46,        512) /* DefaultCombatStyle - Magic */
     , (45956,  52,          1) /* ParentLocation - RightHand */
     , (45956,  53,          1) /* PlacementPosition - RightHandCombat */
     , (45956,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45956,  94,         16) /* TargetType - Creature */
     , (45956, 106,        250) /* ItemSpellcraft */
     , (45956, 107,        400) /* ItemCurMana */
     , (45956, 108,        400) /* ItemMaxMana */
     , (45956, 109,        100) /* ItemDifficulty */
     , (45956, 114,          1) /* Attuned - Attuned */
     , (45956, 151,          2) /* HookType - Wall */
     , (45956, 158,          2) /* WieldRequirements - RawSkill */
     , (45956, 159,         43) /* WieldSkillType - VoidMagic */
     , (45956, 160,          1) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45956,  11, True ) /* IgnoreCollisions */
     , (45956,  13, True ) /* Ethereal */
     , (45956,  14, True ) /* GravityStatus */
     , (45956,  19, True ) /* Attackable */
     , (45956,  22, True ) /* Inscribable */
     , (45956,  69, False) /* IsSellable */
     , (45956,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (45956,   5, -0.02500000037252903) /* ManaRate */
     , (45956,  12,       0) /* Shade */
     , (45956,  29, 1.0800000429153442) /* WeaponDefense */
     , (45956,  39, 0.6000000238418579) /* DefaultScale */
     , (45956, 144, 0.07999999821186066) /* ManaConversionMod */
     , (45956, 147, 0.20000000298023224) /* CriticalFrequency */
     , (45956, 152, 1.100000023841858) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45956,   1, 'Seasoned Explorer Nether Staff') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45956,   1,   33561137) /* Setup */
     , (45956,   3,  536870932) /* SoundTable */
     , (45956,   6,   67111919) /* PaletteBase */
     , (45956,   7,  268436442) /* ClothingBase */
     , (45956,   8,  100690005) /* Icon */
     , (45956,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:52:02.7163329-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "FireChimp",
      "comment": "cloned from amateur explorer nether staff. added attuned, ivoryable , added spells, added, palette, shade, and clothing base"
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "CrimsonMage",
      "comment": "cloned from amateur explorer nether staff. added attuned, ivoryable , added spells, added, palette, shade, and clothing base\n============\nCrit Freq of 0.2"
    }
  ],
  "UserChangeSummary": "cloned from amateur explorer nether staff. added attuned, ivoryable , added spells, added, palette, shade, and clothing base\n============\nCrit Freq of 0.2",
  "IsDone": false
}
*/
