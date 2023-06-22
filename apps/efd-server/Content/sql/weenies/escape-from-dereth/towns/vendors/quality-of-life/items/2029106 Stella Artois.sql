DELETE FROM `weenie` WHERE `class_Id` = 2029106;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (2029106, 'ace2029106-stellaartois', 18, '2023-06-13 07:05:07') /* Food */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (2029106,   1,         32) /* ItemType - Food */
     , (2029106,   5,         50) /* EncumbranceVal */
     , (2029106,  11,        100) /* MaxStackSize */
     , (2029106,  12,          1) /* StackSize */
     , (2029106,  13,         50) /* StackUnitEncumbrance */
     , (2029106,  16,          8) /* ItemUseable - Contained */
     , (2029106,  18,          1) /* UiEffects - Magical */
     , (2029106,  19,          1) /* Value */
     , (2029106,  33,          1) /* Bonded - Bonded */
     , (2029106,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (2029106, 106,        250) /* ItemSpellcraft */
     , (2029106, 107,        100) /* ItemCurMana */
     , (2029106, 108,        100) /* ItemMaxMana */
     , (2029106, 109,          0) /* ItemDifficulty */
     , (2029106, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (2029106,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (2029106,   1, 'Stella Artois') /* Name */
     , (2029106,  14, 'Freshly Brewed in Belgium, use this item to drink it.') /* Use */
     , (2029106,  16, 'A bottle of Stella Artois.') /* LongDesc */
     , (2029106,  20, 'Bottles of Stella Artois') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (2029106,   1,   33559128) /* Setup */
     , (2029106,   3,  536870932) /* SoundTable */
     , (2029106,   8,  100686437) /* Icon */
     , (2029106,  22,  872415275) /* PhysicsEffectTable */
     , (2029106,  23,         65) /* UseSound - Drink1 */
     , (2029106,  28,       3531) /* Spell - Bobo's Quickening */
     , (2029106,  50,  100687554) /* IconOverlay */
     , (2029106,  52,  100687547) /* IconUnderlay */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-25T00:47:43.3005921-07:00",
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
