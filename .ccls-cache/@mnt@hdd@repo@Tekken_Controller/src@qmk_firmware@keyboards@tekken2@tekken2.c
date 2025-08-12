#include "pointing_device.h"

report_mouse_t pointing_device_task_user(report_mouse_t mouse_report) {
    // Reverse X-axis
    mouse_report.x = -mouse_report.x;
    return mouse_report;
}
