
#include <stdio.h>

#include "power_monitors.h"

#include "pin_macros.h"
#include "telemetry.h"
#include "terminal_control.h"

// This function initializes all temperature sensors in the project, if available
void powerMonitorsInitialize(void) {
 
    // Reset chips and write data to config registers
    INA219PowerMonitorInitialize(POS24_MON_ADDR, &error_handler.flags.pos24_mon);
   
    // Write calibration data to allow power monitors to calculate current
    INA219SetCalibration(POS24_MON_ADDR, &error_handler.flags.pos24_mon, POS24_MON_CLSB, POS24_MON_RSHUNT);
    
}

// this function gets temperature data for all temperature sensors
void powerMonitorsGetData(void) {
 
    // Get bus voltage data for each power monitor and stash in telemetry structure
    telemetry.pos24.voltage         = INA219GetVoltage(POS24_MON_ADDR, &error_handler.flags.pos24_mon);

    // Get current data for each power monitor and stash in telemetry structure
    telemetry.pos24.current         = INA219GetCurrent(POS24_MON_ADDR, &error_handler.flags.pos24_mon, POS24_MON_CLSB);

    // Get power data for each power monitor and stash in telemetry structure
    telemetry.pos24.power         = INA219GetPower(POS24_MON_ADDR, &error_handler.flags.pos24_mon, POS24_MON_CLSB);

    power_monitor_data_request = 0;
    
}

// this function prints status for all used power monitors to stdio
void printPowerMonitorStatus(void) {
    
    INA219printStatus(POS24_MON_ADDR, &error_handler.flags.pos24_mon);
    
}