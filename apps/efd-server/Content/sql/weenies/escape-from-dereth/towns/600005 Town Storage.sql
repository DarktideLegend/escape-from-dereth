DELETE FROM `weenie` WHERE `class_Id` = 600005;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600005, 'ace600005-townstorage', 57, '2023-07-25 03:09:36') /* Storage */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600005,   1,        512) /* ItemType - Container */
     , (600005,   5,       6000) /* EncumbranceVal */
     , (600005,   6,         -1) /* ItemsCapacity */
     , (600005,   7,         -1) /* ContainersCapacity */
     , (600005,   8,       3000) /* Mass */
     , (600005,  16,         48) /* ItemUseable - ViewedRemote */
     , (600005,  19,        200) /* Value */
     , (600005,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (600005,  96,        500) /* EncumbranceCapacity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600005,   1, True ) /* Stuck */
     , (600005,   2, False) /* Open */
     , (600005,  12, True ) /* ReportCollisions */
     , (600005,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600005,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600005,   1, 'Town Storage') /* Name */
     , (600005,  14, 'Use this item to open it and see its contents.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600005,   1,   33557143) /* Setup */
     , (600005,   2,  150994948) /* MotionTable */
     , (600005,   3,  536870945) /* SoundTable */
     , (600005,   8,  100671885) /* Icon */
     , (600005,  22,  872415275) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-07-24T20:05:34.8754924-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "fdgf",
  "IsDone": false
}
*/
