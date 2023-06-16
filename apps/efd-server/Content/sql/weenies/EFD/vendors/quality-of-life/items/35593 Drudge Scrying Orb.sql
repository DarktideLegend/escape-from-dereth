DELETE FROM `weenie` WHERE `class_Id` = 35593;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (35593, 'ace35593-drudgescryingorb', 35, '2023-06-13 07:05:07') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (35593,   1,      32768) /* ItemType - Caster */
     , (35593,   5,        100) /* EncumbranceVal */
     , (35593,   9,   16777216) /* ValidLocations - Held */
     , (35593,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (35593,  18,          1) /* UiEffects - Magical */
     , (35593,  19,          5) /* Value */
     , (35593,  33,          1) /* Bonded - Bonded */
     , (35593,  45,          1) /* DamageType - Slash */
     , (35593,  46,        512) /* DefaultCombatStyle - Magic */
     , (35593,  52,          1) /* ParentLocation - RightHand */
     , (35593,  53,          1) /* PlacementPosition - RightHandCombat */
     , (35593,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (35593,  94,         16) /* TargetType - Creature */
     , (35593, 106,        325) /* ItemSpellcraft */
     , (35593, 107,       1000) /* ItemCurMana */
     , (35593, 108,       1000) /* ItemMaxMana */
     , (35593, 109,          1) /* ItemDifficulty */
     , (35593, 114,          0) /* Attuned - Normal */
     , (35593, 151,          6) /* HookType - Wall, Ceiling */
     , (35593, 158,          1) /* WieldRequirements - Skill */
     , (35593, 159,         31) /* WieldSkillType - CreatureEnchantment */
     , (35593, 160,          1) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (35593,  11, True ) /* IgnoreCollisions */
     , (35593,  13, True ) /* Ethereal */
     , (35593,  14, True ) /* GravityStatus */
     , (35593,  15, True ) /* LightsStatus */
     , (35593,  19, True ) /* Attackable */
     , (35593,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (35593,   5, -0.03333299979567528) /* ManaRate */
     , (35593,  29, 1.149999976158142) /* WeaponDefense */
     , (35593,  39, 1.2999999523162842) /* DefaultScale */
     , (35593,  76, 0.6000000238418579) /* Translucency */
     , (35593, 144, 0.30000001192092896) /* ManaConversionMod */
     , (35593, 152, 1.2000000476837158) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (35593,   1, 'Drudge Scrying Orb') /* Name */
     , (35593,  16, 'It is said that Drudge Mystics can see the future in these orbs. Allowing them to prepare for battles to come.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (35593,   1,   33558259) /* Setup */
     , (35593,   3,  536870932) /* SoundTable */
     , (35593,   8,  100674116) /* Icon */
     , (35593,  22,  872415275) /* PhysicsEffectTable */
     , (35593,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (35593,  28,       2076) /* Spell - Mana Boost Other VII */
     , (35593,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (35593,  2101,      2)  /* Aura of Cragstone's Will */
     , (35593,  2242,      2)  /* Web of Deflection */
     , (35593,  2244,      2)  /* Web of Defense */
     , (35593,  2507,      2)  /* Major Creature Enchantment Aptitude */
     , (35593,  2577,      2)  /* Major Willpower */
     , (35593,  2581,      2)  /* Minor Focus */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-06-03T11:56:15.2217581-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "neutropia",
      "comment": "Yotes"
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "neutropia",
      "comment": "Adding INt 46"
    }
  ],
  "UserChangeSummary": "Adding INt 46",
  "IsDone": false
}
*/
