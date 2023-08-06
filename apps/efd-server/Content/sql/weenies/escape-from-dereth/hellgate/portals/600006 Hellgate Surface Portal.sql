DELETE FROM `weenie` WHERE `class_Id` = 600006;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600006, 'ace600006-hellgatesurfaceportal', 7, '2023-06-05 22:51:17') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600006,   1,      65536) /* ItemType - Portal */
     , (600006,  16,         32) /* ItemUseable - Remote */
     , (600006,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (600006, 111,         56) /* PortalBitmask - NoNPK, NoSummon, NoRecall */
     , (600006, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600006,   1, True ) /* Stuck */
     , (600006,  11, False) /* IgnoreCollisions */
     , (600006,  12, True ) /* ReportCollisions */
     , (600006,  13, True ) /* Ethereal */
     , (600006,  14, True ) /* GravityStatus */
     , (600006,  15, True ) /* LightsStatus */
     , (600006,  19, True ) /* Attackable */
     , (600006,  88, True ) /* PortalShowDestination */
     , (600006,  42003, True ) /* Custom Content */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600006,  54, -0.10000000149011612) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600006,   1, 'Hellgate Surface Portal') /* Name */
     , (600006,  38, 'A portal that sends you back to your home realm.') /* AppraisalPortalDestination */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600006,   1,   33555925) /* Setup */
     , (600006,   2,  150994947) /* MotionTable */
     , (600006,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (600006, 2, 42402096, 109.937, -29.15461, -11.995, 0.701265, 0, 0, 0.712901) /* Destination */
/* @teleloc 0x02870130 [109.936996 -29.154610 -11.995000] 0.701265 0.000000 0.000000 0.712901 */;

/* Lifestoned Changelog:
{
  "LastModified": "2022-06-07T14:04:26.5828484-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Updated to include PORTAL_SHOW_DESTINATION_BOOL.",
  "IsDone": true
}
*/
