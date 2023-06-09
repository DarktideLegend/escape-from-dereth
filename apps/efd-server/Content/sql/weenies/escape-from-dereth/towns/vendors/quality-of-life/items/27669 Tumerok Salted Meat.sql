DELETE FROM `weenie` WHERE `class_Id` = 27669;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (27669, 'beefjerkyrenegade', 18, '2023-06-13 07:05:07') /* Food */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (27669,   1,         32) /* ItemType - Food */
     , (27669,   5,        160) /* EncumbranceVal */
     , (27669,   9,          0) /* ValidLocations - None */
     , (27669,  11,        100) /* MaxStackSize */
     , (27669,  12,        100) /* StackSize */
     , (27669,  14,         50) /* StackUnitMass */
     , (27669,  15,          1) /* StackUnitValue */
     , (27669,  16,          8) /* ItemUseable - Contained */
     , (27669,  19,          1) /* Value */
     , (27669,  89,          2) /* BoosterEnum - Health */
     , (27669,  90,         95) /* BoostValue */
     , (27669,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (27669,   1, 'Tumerok Salted Meat') /* Name */
     , (27669,  16, 'These salted meats have been specially treated by Tumerok priests with herbs and spices that have many healing qualities. The result is a pungent and dry strip of meat with incredible healing properties.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (27669,   1,   33554770) /* Setup */
     , (27669,   3,  536870932) /* SoundTable */
     , (27669,   8,  100676521) /* Icon */
     , (27669,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-29T06:56:10.2665877-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "test",
  "IsDone": false
}
*/
