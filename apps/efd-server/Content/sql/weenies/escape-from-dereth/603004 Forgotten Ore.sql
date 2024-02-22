DELETE FROM `weenie` WHERE `class_Id` = 603004;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (603004, 'ace603004-forgottenore', 51, '2024-02-20 13:49:16') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (603004,   1,        128) /* ItemType - Misc */
     , (603004,   5,          1) /* EncumbranceVal */
     , (603004,  11,        100) /* MaxStackSize */
     , (603004,  12,          1) /* StackSize */
     , (603004,  13,          1) /* StackUnitEncumbrance */
     , (603004,  15,          1) /* StackUnitValue */
     , (603004,  16,          1) /* ItemUseable - No */
     , (603004,  19,          1) /* Value */
     , (603004,  33,          1) /* Bonded - Bonded */
     , (603004,  53,        101) /* PlacementPosition - Resting */
     , (603004,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (603004,  11, True ) /* IgnoreCollisions */
     , (603004,  13, True ) /* Ethereal */
     , (603004,  14, True ) /* GravityStatus */
     , (603004,  19, True ) /* Attackable */
     , (603004,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (603004,   1, 'Forgotten Ore') /* Name */
     , (603004,  15, 'Ore mined from a forgotten realm.') /* ShortDesc */
     , (603004,  20, 'Forgotten Ore') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (603004,   1,   33554773) /* Setup */
     , (603004,   3,  536870932) /* SoundTable */
     , (603004,   8,  100688620) /* Icon */
     , (603004,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2024-02-20T05:50:34.4084792-08:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Updated stack size, value and burden to correct values.\n\nChanged weenie type to Stackable - TCK\nadd int 13 and int 15 so the burden and value will show properly when stacked",
  "IsDone": true
}
*/
