DELETE FROM `weenie` WHERE `class_Id` = 600001;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600001, 'ace600001-hideoutportal', 7, '2023-06-04 22:22:28') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600001,   1,      65536) /* ItemType - Portal */
     , (600001,  16,         32) /* ItemUseable - Remote */
     , (600001,  86,         80) /* MinLevel */
     , (600001,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (600001, 111,          1) /* PortalBitmask - Unrestricted */
     , (600001, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600001,   1, True ) /* Stuck */
     , (600001,  11, False) /* IgnoreCollisions */
     , (600001,  12, True ) /* ReportCollisions */
     , (600001,  13, True ) /* Ethereal */
     , (600001,  14, True ) /* GravityStatus */
     , (600001,  15, True ) /* LightsStatus */
     , (600001,  19, True ) /* Attackable */
     , (600001,  88, True ) /* PortalShowDestination */
     , (600001,  42003, True ) /* Custom Content */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600001,  54, -0.10000000149011612) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600001,   1, 'Hideout Portal') /* Name */
     , (600001,  38, 'A portal to a player''s hideout.') /* AppraisalPortalDestination */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600001,   1,   33555925) /* Setup */
     , (600001,   2,  150994947) /* MotionTable */
     , (600001,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (600001, 2, 42402369, 99.28135, -19.42151, 0.005, 0.566526, 0, 0, -0.824044) /* Destination */
/* @teleloc 0x02870241 [99.281349 -19.421511 0.005000] 0.566526 0.000000 0.000000 -0.824044 */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-06-04T15:21:35.4644504-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Updated to include PORTAL_SHOW_DESTINATION_BOOL.",
  "IsDone": true
}
*/
