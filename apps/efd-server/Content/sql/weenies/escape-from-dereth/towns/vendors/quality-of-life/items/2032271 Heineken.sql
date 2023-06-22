DELETE FROM `weenie` WHERE `class_Id` = 2032271;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (2032271, 'ace2032271-heineken', 18, '2023-06-13 07:05:07') /* Food */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (2032271,   1,         32) /* ItemType - Food */
     , (2032271,   5,         50) /* EncumbranceVal */
     , (2032271,  11,        100) /* MaxStackSize */
     , (2032271,  12,          1) /* StackSize */
     , (2032271,  13,         50) /* StackUnitEncumbrance */
     , (2032271,  16,          8) /* ItemUseable - Contained */
     , (2032271,  18,          1) /* UiEffects - Magical */
     , (2032271,  19,          1) /* Value */
     , (2032271,  33,          1) /* Bonded - Bonded */
     , (2032271,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (2032271, 106,        250) /* ItemSpellcraft */
     , (2032271, 107,         60) /* ItemCurMana */
     , (2032271, 108,         60) /* ItemMaxMana */
     , (2032271, 109,          0) /* ItemDifficulty */
     , (2032271, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (2032271,  11, True ) /* IgnoreCollisions */
     , (2032271,  13, True ) /* Ethereal */
     , (2032271,  14, True ) /* GravityStatus */
     , (2032271,  19, True ) /* Attackable */
     , (2032271,  22, True ) /* Inscribable */
     , (2032271,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (2032271,   1, 'Heineken') /* Name */
     , (2032271,  14, 'Freshly Brewed in The Netherlands, use this item to drink it.') /* Use */
     , (2032271,  16, 'A bottle of Heineken.') /* LongDesc */
     , (2032271,  20, 'Bottles of Heineken') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (2032271,   1,   33559128) /* Setup */
     , (2032271,   3,  536870932) /* SoundTable */
     , (2032271,   8,  100688499) /* Icon */
     , (2032271,  22,  872415275) /* PhysicsEffectTable */
     , (2032271,  23,         65) /* UseSound - Drink1 */
     , (2032271,  28,       3862) /* Spell - Duke Raoul's Pride */
     , (2032271,  50,  100687554) /* IconOverlay */
     , (2032271,  52,  100687547) /* IconUnderlay */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-25T00:48:12.041932-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "ACE.Adapter",
      "comment": "Weenie exported from ACEmulator world database using ACE.Adapter"
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "ACE.Adapter",
      "comment": "Weenie exported from ACEmulator world database using ACE.Adapter"
    }
  ],
  "UserChangeSummary": "Weenie exported from ACEmulator world database using ACE.Adapter",
  "IsDone": false
}
*/
