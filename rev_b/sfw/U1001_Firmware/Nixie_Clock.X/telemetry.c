

#include "telemetry.h"

#include <xc.h>
#include <stdio.h>

#include "terminal_control.h"
#include "pin_macros.h"

// This prints all telemetry data in an easily digested format
void printCurrentTelemetry(void) {
 
    // Print stuff off for POS12
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("\t+24V Power Input:\033[K\r\n");
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\t\tVout: %.3fV"
           "\tIout: %.3fA"
           "\tPout: %.3fW\033[K\r\n"
           "\t\tTemp: %.3fC\033[K\r\n\033[K\r\n",
            telemetry.pos24.voltage,
            telemetry.pos24.current,
            telemetry.pos24.power,
            telemetry.pos24.temperature);    
//
//    // print off other random data points
//    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, BOLD_FONT);
//    printf("\tMiscellaneous Telemetry:\033[K\r\n");
//    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("\t\tHost Die Temperature: %.3fC\033[K\r\n", telemetry.mcu_die_temp);
//    printf("\t\tHost ADC Reference Voltage: %.3fV\033[K\r\n", telemetry.adc_vref_voltage);
//    printf("\t\tAmbient Temperature: %.3fC\033[K\r\n", telemetry.ambient_temperature);
//    if (nBACKUP_RTC_CONFIG_PIN == LOW){
//        printf("\t\tBackup RTC Die Temperature: %.3fC\033[K\r\n", telemetry.backup_rtc_temperature);
//        printf("\t\tBackup Battery Voltage: %.3fV\033[K\r\n", telemetry.backup_battery_voltage);
//    }
//    
    terminalTextAttributesReset();

    
}