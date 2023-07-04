DELETE FROM `weenie` WHERE `class_Id` = 600004;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600004, 'ace600004-hellgatesurfaceportal', 7, '2023-07-03 07:41:03') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600004,   1,      65536) /* ItemType - Portal */
     , (600004,  16,         32) /* ItemUseable - Remote */
     , (600004,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (600004, 111,         56) /* PortalBitmask - NoNPK, NoSummon, NoRecall */
     , (600004, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600004,   1, True ) /* Stuck */
     , (600004,  11, False) /* IgnoreCollisions */
     , (600004,  12, True ) /* ReportCollisions */
     , (600004,  13, True ) /* Ethereal */
     , (600004,  14, True ) /* GravityStatus */
     , (600004,  15, True ) /* LightsStatus */
     , (600004,  19, True ) /* Attackable */
     , (600004,  88, True ) /* PortalShowDestination */
     , (600004,  42003, True ) /* Custom Content */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600004,  54, -0.10000000149011612) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600004,   1, 'Hellgate Surface Portal') /* Name */
     , (600004,  38, 'This portal returns players to the surface, or does it?') /* AppraisalPortalDestination */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600004,   1,   33555925) /* Setup */
     , (600004,   2,  150994947) /* MotionTable */
     , (600004,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (600004, 2, 42402096, 109.937, -29.15461, -11.995, 0.701265, 0, 0, 0.712901) /* Destination */
/* @teleloc 0x02870130 [109.936996 -29.154610 -11.995000] 0.701265 0.000000 0.000000 0.712901 */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-07-03T00:41:23.6541467-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Updated to include PORTAL_SHOW_DESTINATION_BOOL.",
  "IsDone": true
}
*/
