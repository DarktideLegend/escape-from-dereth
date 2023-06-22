DELETE FROM `weenie` WHERE `class_Id` = 4200081;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4200081, 'ace4200081-heartofinnocence', 7, '2023-06-13 07:05:07') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4200081,   1,      65536) /* ItemType - Portal */
     , (4200081,  16,         32) /* ItemUseable - Remote */
     , (4200081,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (4200081, 111,         32) /* PortalBitmask - NoRecall */
     , (4200081, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4200081,   1, True ) /* Stuck */
     , (4200081,  11, False) /* IgnoreCollisions */
     , (4200081,  12, True ) /* ReportCollisions */
     , (4200081,  13, True ) /* Ethereal */
     , (4200081,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4200081,  54, -0.10000000149011612) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4200081,   1, 'Heart of Innocence') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4200081,   1,   33554867) /* Setup */
     , (4200081,   2,  150994947) /* MotionTable */
     , (4200081,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (4200081, 2, 1598423433, 39.247, 0.038, 0, -0.02677, 0, 0, -0.999642) /* Destination */
/* @teleloc 0x5F460189 [39.247002 0.038000 0.000000] -0.026770 0.000000 0.000000 -0.999642 */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-05-29T05:49:58.9904579-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [
    {
      "created": "0001-01-01T00:00:00",
      "author": "ACE.Adapter",
      "comment": "Weenie exported from ACEmulator world database using ACE.Adapter"
    }
  ],
  "UserChangeSummary": "test",
  "IsDone": false
}
*/
