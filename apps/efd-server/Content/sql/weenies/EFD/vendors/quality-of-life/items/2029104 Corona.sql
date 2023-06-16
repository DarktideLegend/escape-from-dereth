DELETE FROM `weenie` WHERE `class_Id` = 2029104;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (2029104, 'ace2029104-corona', 18, '2023-06-13 07:05:07') /* Food */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (2029104,   1,         32) /* ItemType - Food */
     , (2029104,   5,         50) /* EncumbranceVal */
     , (2029104,  11,        100) /* MaxStackSize */
     , (2029104,  12,          1) /* StackSize */
     , (2029104,  13,         50) /* StackUnitEncumbrance */
     , (2029104,  16,          8) /* ItemUseable - Contained */
     , (2029104,  18,          1) /* UiEffects - Magical */
     , (2029104,  19,          1) /* Value */
     , (2029104,  33,          1) /* Bonded - Bonded */
     , (2029104,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (2029104, 106,        250) /* ItemSpellcraft */
     , (2029104, 107,         60) /* ItemCurMana */
     , (2029104, 108,         60) /* ItemMaxMana */
     , (2029104, 109,          0) /* ItemDifficulty */
     , (2029104, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (2029104,  11, True ) /* IgnoreCollisions */
     , (2029104,  13, True ) /* Ethereal */
     , (2029104,  14, True ) /* GravityStatus */
     , (2029104,  19, True ) /* Attackable */
     , (2029104,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (2029104,   1, 'Corona') /* Name */
     , (2029104,  14, 'Freshly Brewed in Mexico, use this item to drink it.') /* Use */
     , (2029104,  16, 'A bottle of Corona.') /* LongDesc */
     , (2029104,  20, 'Bottles of Corona') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (2029104,   1,   33559128) /* Setup */
     , (2029104,   3,  536870932) /* SoundTable */
     , (2029104,   8,  100686437) /* Icon */
     , (2029104,  22,  872415275) /* PhysicsEffectTable */
     , (2029104,  23,         65) /* UseSound - Drink1 */
     , (2029104,  28,       3533) /* Spell - Brighteyes' Favor */
     , (2029104,  50,  100687554) /* IconOverlay */
     , (2029104,  52,  100687547) /* IconUnderlay */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-25T00:47:27.8113792-07:00",
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
