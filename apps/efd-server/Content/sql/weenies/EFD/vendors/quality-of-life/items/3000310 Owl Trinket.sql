DELETE FROM `weenie` WHERE `class_Id` = 3000310;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (3000310, 'ace3000310-owltrinket', 1, '2023-06-13 07:05:07') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (3000310,   1,          8) /* ItemType - Jewelry */
     , (3000310,   5,         60) /* EncumbranceVal */
     , (3000310,   9,   67108864) /* ValidLocations - TrinketOne */
     , (3000310,  16,          1) /* ItemUseable - No */
     , (3000310,  19,         50) /* Value */
     , (3000310,  53,        101) /* PlacementPosition - Resting */
     , (3000310,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (3000310, 106,         50) /* ItemSpellcraft */
     , (3000310, 107,       6000) /* ItemCurMana */
     , (3000310, 108,       6000) /* ItemMaxMana */
     , (3000310, 109,         15) /* ItemDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (3000310,  11, True ) /* IgnoreCollisions */
     , (3000310,  13, True ) /* Ethereal */
     , (3000310,  14, True ) /* GravityStatus */
     , (3000310,  19, True ) /* Attackable */
     , (3000310,  22, True ) /* Inscribable */
     , (3000310,  91, False) /* Retained */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (3000310,   5, -0.04899999871850014) /* ManaRate */
     , (3000310,  39, 0.6700000166893005) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (3000310,   1, 'Owl Trinket') /* Name */
     , (3000310,  16, 'Wise like an owl and close with God.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (3000310,   1,   33554809) /* Setup */
     , (3000310,   3,  536870932) /* SoundTable */
     , (3000310,   8,  100690596) /* Icon */
     , (3000310,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (3000310,  5137,      0)  /* Augmented Understanding III */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-27T03:40:02.4572531-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "CrimsonMage",
      "comment": "Fixed Current Mana to 6000\r\nDone"
    },
    {
      "created": "0001-01-01T00:00:00",
      "author": "Zarto ",
      "comment": "-correcting weenie_type to 1 - generic per cache base."
    }
  ],
  "UserChangeSummary": "-correcting weenie_type to 1 - generic per cache base.",
  "IsDone": true
}
*/
