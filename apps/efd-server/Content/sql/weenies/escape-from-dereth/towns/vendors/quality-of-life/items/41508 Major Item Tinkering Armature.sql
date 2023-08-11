DELETE FROM `weenie` WHERE `class_Id` = 41508;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (41508, 'ace41508-majoritemtinkeringarmature', 1, '2023-08-11 20:39:09') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (41508,   1,   67108864) /* ItemType - CraftAlchemyIntermediate */
     , (41508,   3,          4) /* PaletteTemplate - Brown */
     , (41508,   5,        100) /* EncumbranceVal */
     , (41508,  11,        100) /* MaxStackSize */
     , (41508,  12,          1) /* StackSize */
     , (41508,  13,        100) /* StackUnitEncumbrance */
     , (41508,  15,          1) /* StackUnitValue */
     , (41508,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (41508,  19,          5) /* Value */
     , (41508,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (41508,  94,          8) /* TargetType - Jewelry */
     , (41508, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (41508,   1, False) /* Stuck */
     , (41508,  11, True ) /* IgnoreCollisions */
     , (41508,  13, True ) /* Ethereal */
     , (41508,  14, True ) /* GravityStatus */
     , (41508,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (41508,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (41508,   1, 'Major Item Tinkering Armature') /* Name */
     , (41508,  15, 'A Major Item Tinkering Armature.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (41508,   1,   33554817) /* Setup */
     , (41508,   3,  536870932) /* SoundTable */
     , (41508,   6,   67111919) /* PaletteBase */
     , (41508,   7,  268436430) /* ClothingBase */
     , (41508,   8,  100673216) /* Icon */
     , (41508,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-08-11T13:37:09.4787198-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "ACE.Adapter",
      "comment": "Weenie exported from ACEmulator world database using ACE.Adapter"
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "Zarto",
      "comment": "changed target type to 8. add palette and shade"
    }
  ],
  "UserChangeSummary": "changed target type to 8. add palette and shade",
  "IsDone": false
}
*/
