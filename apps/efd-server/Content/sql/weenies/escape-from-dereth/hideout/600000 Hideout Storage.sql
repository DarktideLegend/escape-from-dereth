DELETE FROM `weenie` WHERE `class_Id` = 600000;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600000, 'ace600000-hideoutstorage', 57, '2023-06-13 09:21:33') /* Storage */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600000,   1,        512) /* ItemType - Container */
     , (600000,   5,       6000) /* EncumbranceVal */
     , (600000,   6,         -1) /* ItemsCapacity */
     , (600000,   7,         -1) /* ContainersCapacity */
     , (600000,   8,       3000) /* Mass */
     , (600000,  16,         48) /* ItemUseable - ViewedRemote */
     , (600000,  19,        200) /* Value */
     , (600000,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (600000,  96,        500) /* EncumbranceCapacity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600000,   1, True ) /* Stuck */
     , (600000,   2, False) /* Open */
     , (600000,  12, True ) /* ReportCollisions */
     , (600000,  13, False) /* Ethereal */
     , (600000,  42003, True ) /* Custom Content */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600000,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600000,   1, 'Hideout Storage') /* Name */
     , (600000,  14, 'Use this item to open it and see its contents.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600000,   1,   33557143) /* Setup */
     , (600000,   2,  150994948) /* MotionTable */
     , (600000,   3,  536870945) /* SoundTable */
     , (600000,   8,  100671885) /* Icon */
     , (600000,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-06-13T02:20:19.1355843-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "fdgf",
  "IsDone": false
}
*/
