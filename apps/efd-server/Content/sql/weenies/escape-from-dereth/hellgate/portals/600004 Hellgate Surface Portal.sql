DELETE FROM `weenie` WHERE `class_Id` = 600004;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600004, 'ace600004-hellgatesurfaceportal', 7, '2023-07-31 02:31:34') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600004,   1,      65536) /* ItemType - Portal */
     , (600004,   3,         26) /* PaletteTemplate - DarkGoldMetal */
     , (600004,  16,         32) /* ItemUseable - Remote */
     , (600004,  93,       2052) /* PhysicsState - Ethereal, LightingOn */
     , (600004, 111,          1) /* PortalBitmask - Unrestricted */
     , (600004, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600004,   1, True ) /* Stuck */
     , (600004,  11, False) /* IgnoreCollisions */
     , (600004,  12, False) /* ReportCollisions */
     , (600004,  13, True ) /* Ethereal */
     , (600004,  14, False) /* GravityStatus */
     , (600004,  15, True ) /* LightsStatus */
     , (600004,  88, False) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600004,  12,     0.5) /* Shade */
     , (600004,  54,    0.75) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600004,   1, 'Hellgate Surface Portal') /* Name */
     , (600004,  14, 'A portal that teleports you back to the home realm.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600004,   1,   33556212) /* Setup */
     , (600004,   2,  150994947) /* MotionTable */
     , (600004,   6,   67109370) /* PaletteBase */
     , (600004,   7,  268435652) /* ClothingBase */
     , (600004,   8,  100667499) /* Icon */;

/* Lifestoned Changelog:
{
  "LastModified": "2023-07-30T19:32:37.9891999-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Cache + Show Portal Dest",
  "IsDone": true
}
*/
