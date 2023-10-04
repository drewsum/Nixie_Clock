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

#ifndef _CARRIER_SPD_H    /* Guard against multiple inclusion */
#define _CARRIER_SPD_H

#include <xc.h>
#include <stdbool.h>

// this structure is the carrier board serial presence detect object, and keeps 
// track of tube types and features installed on the display carrier board that's
// installed
volatile __attribute__((coherent)) struct carrier_spd_s {
    
    char * tube_type;               // string that contains nixie tube name
    char board_rev;                 // single letter that contains board rev, hopefully never exceeding Z
    bool backlight_support;         // True for backlight support, False for no backlight
    bool etc_support;               // True for has DS1683 ETC, False for not
    bool pushbutton_support;        // True for uses poushbuttons, False for no pushbuttons
    bool menu_led_support;          // True for has menu LEDs, False for no menu LEDs
    bool supports_seconds;          // True if has seconds digits
    bool supports_milliseconds;     // True if has milliseconds digits
    uint32_t num_colons;            // Number of colons populated
    uint32_t mfg_month;             // month of manufacture date
    uint32_t mfg_day;               // day of manufacture date
    uint32_t mfg_year;              // year of manufacture date
    
} carrier_spd;

// this function reads SPD data from the carrier board I2C eeprom and modifies the carrier_spd struct
void CarrierSPDGetString(void);

// prints SPD data to terminal
void CarrierSPDPrintString(void);

#endif /* _CARRIER_SPD_H */

/* *****************************************************************************
 End of File
 */
