DELETE FROM `weenie` WHERE `class_Id` = 15856;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (15856, 'jewelbloodyhigh', 1, '2023-06-13 07:05:07') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (15856,   1,          8) /* ItemType - Jewelry */
     , (15856,   3,         14) /* PaletteTemplate - Red */
     , (15856,   5,        100) /* EncumbranceVal */
     , (15856,   8,         30) /* Mass */
     , (15856,   9,      32768) /* ValidLocations - NeckWear */
     , (15856,  16,          1) /* ItemUseable - No */
     , (15856,  18,          1) /* UiEffects - Magical */
     , (15856,  19,          1) /* Value */
     , (15856,  33,          1) /* Bonded - Bonded */
     , (15856,  36,       9999) /* ResistMagic */
     , (15856,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (15856, 106,        300) /* ItemSpellcraft */
     , (15856, 107,       2000) /* ItemCurMana */
     , (15856, 108,       2000) /* ItemMaxMana */
     , (15856, 109,        170) /* ItemDifficulty */
     , (15856, 114,          1) /* Attuned - Attuned */
     , (15856, 150,        103) /* HookPlacement - Hook */
     , (15856, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (15856,  22, True ) /* Inscribable */
     , (15856,  23, True ) /* DestroyOnSell */
     , (15856,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (15856,   5, -0.03333299979567528) /* ManaRate */
     , (15856,  39, 0.800000011920929) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (15856,   1, 'Encrusted Bloodstone Jewel') /* Name */
     , (15856,  16, 'A jewel carved from Bloodstone that has a slick, sticky coating. A thin copper necklace can be seen beneath the sheen. Perhaps it is a necklace?') /* LongDesc */
     , (15856,  33, 'BloodJewelHighPickedUp') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (15856,   1,   33554809) /* Setup */
     , (15856,   3,  536870932) /* SoundTable */
     , (15856,   6,   67111919) /* PaletteBase */
     , (15856,   7,  268435723) /* ClothingBase */
     , (15856,   8,  100672819) /* Icon */
     , (15856,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (15856,  2666,      2)  /* Essence Glutton */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-06-01T04:54:40.35487-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "test",
  "IsDone": false
}
*/
