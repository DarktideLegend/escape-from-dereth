DELETE FROM `weenie` WHERE `class_Id` = 24179;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (24179, 'stoneheartmajor', 44, '2023-06-13 07:05:07') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (24179,   1,       2048) /* ItemType - Gem */
     , (24179,   3,         39) /* PaletteTemplate - Black */
     , (24179,   5,          5) /* EncumbranceVal */
     , (24179,   8,          5) /* Mass */
     , (24179,  11,          1) /* MaxStackSize */
     , (24179,  12,          1) /* StackSize */
     , (24179,  13,          5) /* StackUnitEncumbrance */
     , (24179,  14,          5) /* StackUnitMass */
     , (24179,  15,          0) /* StackUnitValue */
     , (24179,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (24179,  19,        250) /* Value */
     , (24179,  33,          1) /* Bonded - Bonded */
     , (24179,  53,        101) /* PlacementPosition - Resting */
     , (24179,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (24179,  94,        128) /* TargetType - Misc */
     , (24179, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (24179,  11, True ) /* IgnoreCollisions */
     , (24179,  13, True ) /* Ethereal */
     , (24179,  14, True ) /* GravityStatus */
     , (24179,  19, True ) /* Attackable */
     , (24179,  22, True ) /* Inscribable */
     , (24179,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (24179,   1, 'Heart of the Innocent') /* Name */
     , (24179,  14, 'Place this gem into a Weeping weapon cast to turn it into a Weeping Weapon.') /* Use */
     , (24179,  15, 'This was once the heart of Jaleh al-Thani now it has become a hardened crystal that forever bleeds.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (24179,   1,   33556407) /* Setup */
     , (24179,   3,  536870932) /* SoundTable */
     , (24179,   6,   67111919) /* PaletteBase */
     , (24179,   7,  268435965) /* ClothingBase */
     , (24179,   8,  100674286) /* Icon */
     , (24179,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-21T03:19:52.3926208-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "CrimsonMage",
      "comment": "Updated Target Type to allow the gem to work on Casts."
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "CrimsonMage",
      "comment": "Updated Target Type to allow the gem to work on Casts.\r\n=======\r\n-Fixed weenie type to Craft Tool"
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "CrimsonMage",
      "comment": "Updated item description text to match EOR."
    }
  ],
  "UserChangeSummary": "Updated item description text to match EOR.",
  "IsDone": true
}
*/
