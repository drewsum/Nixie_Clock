/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _POWER_MONITORS_H    /* Guard against multiple inclusion */
#define _POWER_MONITORS_H

#include "ina219_power_monitor.h"

#include "error_handler.h"

// These are all the I2C 7 bit addresses of power monitors in this project
#define POS24_MON_ADDR              0x40

// These macros set the CLSB (current lsb, resolution) for each power monitor
#define POS24_MON_CLSB              60e-6

// These macros set the RSHUNT value (shunt resistance) for each power monitor
#define POS24_MON_RSHUNT              0.02

// This flag is set when the application wants to poll for new power monitor data
volatile __attribute__((coherent)) uint8_t power_monitor_data_request = 0;

// This function initializes all power monitors in the project, if available
void powerMonitorsInitialize(void);

// this function gets data from all power monitors
void powerMonitorsGetData(void);


#endif /* _POWER_MONITORS_H */

/* *****************************************************************************
 End of File
 */
