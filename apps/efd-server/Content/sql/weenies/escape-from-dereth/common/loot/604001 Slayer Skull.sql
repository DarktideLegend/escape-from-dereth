DELETE FROM `weenie` WHERE `class_Id` = 604001;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (604001, 'ace604001-slayerskull', 38, '2023-08-10 01:23:23') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (604001,   1,       2048) /* ItemType - Gem */
     , (604001,   5,        150) /* EncumbranceVal */
     , (604001,  11,          1) /* MaxStackSize */
     , (604001,  12,          1) /* StackSize */
     , (604001,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (604001,  18,          4) /* UiEffects - BoostHealth */
     , (604001,  19,        500) /* Value */
     , (604001,  33,          1) /* Bonded - Bonded */
     , (604001,  53,        101) /* PlacementPosition - Resting */
     , (604001,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (604001,  94,      33025) /* TargetType - WeaponOrCaster */
     , (604001, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (604001,  11, True ) /* IgnoreCollisions */
     , (604001,  13, True ) /* Ethereal */
     , (604001,  14, True ) /* GravityStatus */
     , (604001,  19, True ) /* Attackable */
     , (604001,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (604001,   1, 'Slayer Skull') /* Name */
     , (604001,  14, 'Use this skull on any loot-generated weapon or caster to give it a Slayer effect.') /* Use */
     , (604001,  16, 'A black skull with sockets so dark they seem to be emptier than a mere lack of light can explain. The Skull is empowered to enchant a single weapon with slayer properties.  This effect is permanent, but fragile, and therefore cannot be applied to any weapon previously empowered.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (604001,   1,   33556926) /* Setup */
     , (604001,   3,  536870932) /* SoundTable */
     , (604001,   6,   67111919) /* PaletteBase */
     , (604001,   8,  100689142) /* Icon */
     , (604001,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-08-09T18:22:25.4492788-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Yotes PCAP. Adding quest line.",
  "IsDone": false
}
*/
