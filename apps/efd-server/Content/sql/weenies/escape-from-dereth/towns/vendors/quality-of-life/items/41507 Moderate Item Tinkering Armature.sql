DELETE FROM `weenie` WHERE `class_Id` = 41507;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (41507, 'ace41507-moderateitemtinkeringarmature', 1, '2023-08-11 20:39:09') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (41507,   1,   67108864) /* ItemType - CraftAlchemyIntermediate */
     , (41507,   3,          4) /* PaletteTemplate - Brown */
     , (41507,   5,        100) /* EncumbranceVal */
     , (41507,  11,        100) /* MaxStackSize */
     , (41507,  12,          1) /* StackSize */
     , (41507,  13,        100) /* StackUnitEncumbrance */
     , (41507,  15,      10000) /* StackUnitValue */
     , (41507,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (41507,  19,          3) /* Value */
     , (41507,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (41507,  94,          8) /* TargetType - Jewelry */
     , (41507, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (41507,   1, False) /* Stuck */
     , (41507,  11, True ) /* IgnoreCollisions */
     , (41507,  13, True ) /* Ethereal */
     , (41507,  14, True ) /* GravityStatus */
     , (41507,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (41507,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (41507,   1, 'Moderate Item Tinkering Armature') /* Name */
     , (41507,  15, 'A Moderate Item Tinkering Armature.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (41507,   1,   33554817) /* Setup */
     , (41507,   3,  536870932) /* SoundTable */
     , (41507,   6,   67111919) /* PaletteBase */
     , (41507,   7,  268436430) /* ClothingBase */
     , (41507,   8,  100673216) /* Icon */
     , (41507,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-08-11T13:36:46.3243432-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "Zarto",
      "comment": "changed target type to 8. add palette and shade\ncloned from 41508"
    }
  ],
  "UserChangeSummary": "changed target type to 8. add palette and shade\ncloned from 41508",
  "IsDone": false
}
*/
