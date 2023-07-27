DELETE FROM `weenie` WHERE `class_Id` = 602001;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (602001, 'ace602001-invisibilitypotion', 18, '2023-07-27 21:42:56') /* Food */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (602001,   1,         32) /* ItemType - Food */
     , (602001,   3,          2) /* PaletteTemplate - Blue */
     , (602001,   5,         50) /* EncumbranceVal */
     , (602001,   8,         25) /* Mass */
     , (602001,   9,          0) /* ValidLocations - None */
     , (602001,  11,        100) /* MaxStackSize */
     , (602001,  12,          1) /* StackSize */
     , (602001,  13,         50) /* StackUnitEncumbrance */
     , (602001,  14,         25) /* StackUnitMass */
     , (602001,  15,          20000) /* StackUnitValue */
     , (602001,  16,          8) /* ItemUseable - Contained */
     , (602001,  19,          20000) /* Value */
     , (602001,  89,          4) /* BoosterEnum - Stamina */
     , (602001,  90,          4) /* BoostValue */
     , (602001,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (602001,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (602001,   1, 'Invisibility Potion') /* Name */
     , (602001,  14, 'Use this item to go invisibile for 30 seconds, 30 minute cooldown.') /* Use */
     , (602001,  20, 'Invisibility Potions') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (602001,   1,   33554603) /* Setup */
     , (602001,   3,  536870932) /* SoundTable */
     , (602001,   6,   67111919) /* PaletteBase */
     , (602001,   7,  268435996) /* ClothingBase */
     , (602001,   8,  100670632) /* Icon */
     , (602001,  22,  872415275) /* PhysicsEffectTable */
     , (602001,  23,         65) /* UseSound - Drink1 */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-07-27T14:44:20.5823414-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "yeah ",
  "IsDone": false
}
*/
