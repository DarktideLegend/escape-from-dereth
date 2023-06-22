DELETE FROM `weenie` WHERE `class_Id` = 21998;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (21998, 'arrowheadchorizitedeadly', 44, '2023-06-13 07:05:07') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (21998,   1,  134217728) /* ItemType - CraftFletchingIntermediate */
     , (21998,   5,          0) /* EncumbranceVal */
     , (21998,   8,         10) /* Mass */
     , (21998,   9,          0) /* ValidLocations - None */
     , (21998,  11,        100) /* MaxStackSize */
     , (21998,  12,          1) /* StackSize */
     , (21998,  13,          0) /* StackUnitEncumbrance */
     , (21998,  14,         10) /* StackUnitMass */
     , (21998,  15,          1) /* StackUnitValue */
     , (21998,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (21998,  19,          1) /* Value */
     , (21998,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (21998,  94,  134217728) /* TargetType - CraftFletchingIntermediate */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (21998,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (21998,   1, 'Bundle of Deadly Chorizite Arrowheads') /* Name */
     , (21998,  14, 'This item is used in fletching.') /* Use */
     , (21998,  20, 'Bundles of Deadly Chorizite Arrowheads') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (21998,   1,   33555958) /* Setup */
     , (21998,   3,  536870932) /* SoundTable */
     , (21998,   8,  100673587) /* Icon */
     , (21998,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-31T10:14:47.3797819-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "Zarto ",
      "comment": "Changed encumbrance value to 0 per EOR"
    }
  ],
  "UserChangeSummary": "Changed encumbrance value to 0 per EOR",
  "IsDone": false
}
*/
