DELETE FROM `weenie` WHERE `class_Id` = 600002;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600002, 'ace600002-homerealmportal', 7, '2023-06-04 22:22:28') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600002,   1,      65536) /* ItemType - Portal */
     , (600002,  16,         32) /* ItemUseable - Remote */
     , (600002,  86,         80) /* MinLevel */
     , (600002,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (600002, 111,          1) /* PortalBitmask - Unrestricted */
     , (600002, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600002,   1, True ) /* Stuck */
     , (600002,  11, False) /* IgnoreCollisions */
     , (600002,  12, True ) /* ReportCollisions */
     , (600002,  13, True ) /* Ethereal */
     , (600002,  14, True ) /* GravityStatus */
     , (600002,  15, True ) /* LightsStatus */
     , (600002,  19, True ) /* Attackable */
     , (600002,  88, True ) /* PortalShowDestination */
     , (600002,  42003, True ) /* Custom Content */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600002,  54, -0.10000000149011612) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600002,   1, 'Home Realm Portal') /* Name */
     , (600002,  38, 'A portal that returns a player to their home realm from their hideout.') /* AppraisalPortalDestination */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600002,   1,   33555925) /* Setup */
     , (600002,   2,  150994947) /* MotionTable */
     , (600002,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (600002, 2, 42402369, 99.28135, -19.42151, 0.005, 0.566526, 0, 0, -0.824044) /* Destination */
/* @teleloc 0x02870241 [99.281349 -19.421511 0.005000] 0.566526 0.000000 0.000000 -0.824044 */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-06-04T15:21:07.6686115-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Updated to include PORTAL_SHOW_DESTINATION_BOOL.",
  "IsDone": true
}
*/
