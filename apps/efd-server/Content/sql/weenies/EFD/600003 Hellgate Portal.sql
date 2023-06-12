DELETE FROM `weenie` WHERE `class_Id` = 600003;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600003, 'ace600003-hellgateportal', 7, '2023-06-05 22:51:17') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600003,   1,      65536) /* ItemType - Portal */
     , (600003,  16,         32) /* ItemUseable - Remote */
     , (600003,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (600003, 111,         56) /* PortalBitmask - NoNPK, NoSummon, NoRecall */
     , (600003, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600003,   1, True ) /* Stuck */
     , (600003,  11, False) /* IgnoreCollisions */
     , (600003,  12, True ) /* ReportCollisions */
     , (600003,  13, True ) /* Ethereal */
     , (600003,  14, True ) /* GravityStatus */
     , (600003,  15, True ) /* LightsStatus */
     , (600003,  19, True ) /* Attackable */
     , (600003,  88, True ) /* PortalShowDestination */
     , (600003,  42003, True ) /* Custom Content */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600003,  54, -0.10000000149011612) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600003,   1, 'Hellgate Portal') /* Name */
     , (600003,  38, 'A portal to a hellgate. You must be in a fellowship to enter this portal. Your fellowship can only have a maximum of 2 players.') /* AppraisalPortalDestination */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600003,   1,   33555925) /* Setup */
     , (600003,   2,  150994947) /* MotionTable */
     , (600003,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (600003, 2, 42402096, 109.937, -29.15461, -11.995, 0.701265, 0, 0, 0.712901) /* Destination */
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
