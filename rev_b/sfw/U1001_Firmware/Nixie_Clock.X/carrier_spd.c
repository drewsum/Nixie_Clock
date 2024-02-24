
#include "carrier_spd.h"
#include <stdio.h>
#include "plib_i2c.h"
#include "error_handler.h"
#include "terminal_control.h"

#include <string.h>

void CarrierSPDGetData(void) {
    
    uint8_t data_reg_pointer[1];
    uint8_t readBytes[256];
    data_reg_pointer[0] = 0x00;
    if(!I2CMaster_WriteRead(0x50, &data_reg_pointer[0], 1, readBytes, 256)) {
        error_handler.flags.carrier_board_spd = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    uint32_t read_backlight, read_etc, read_pushbutton, read_led;
    char read_tube[32];
    
    sscanf(readBytes, 
            "Tube: %32[^.]. Board Rev: %c. Backlight: %u. ETC: %u. Pushbutton: %u. Menu LEDs: %u. Manufacture Date: %u/%u/%u\n",
            &read_tube,
            &carrier_spd.board_rev,
            &read_backlight,
            &read_etc,
            &read_pushbutton,
            &read_led,
            &carrier_spd.mfg_month,
            &carrier_spd.mfg_day,
            &carrier_spd.mfg_year);
    
    strcpy(carrier_spd.tube_type, read_tube);
    carrier_spd.backlight_support = read_backlight;
    carrier_spd.etc_support = read_etc;
    carrier_spd.pushbutton_support = read_pushbutton;
    carrier_spd.menu_led_support = read_led;
    
    
}

// prints SPD data to terminal
void CarrierSPDPrintString(void) {

    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Retrieved Carrier Board Serial Presence Detect (SPD) Settings:\r\n");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Tube Type: %s\r\n", carrier_spd.tube_type);
    printf("    Carrier Board Rev: %c\r\n", carrier_spd.board_rev);
    printf("    Date of Manufacture: %u/%u/%u\r\n", carrier_spd.mfg_month, carrier_spd.mfg_day, carrier_spd.mfg_year);
    printf("    Backlight: %s\r\n", carrier_spd.backlight_support ? "true" : "false");
    printf("    Elapsed Time Counter: %s\r\n", carrier_spd.etc_support ? "true" : "false");
    printf("    Pushbuttons: %s\r\n", carrier_spd.pushbutton_support ? "true" : "false");
    printf("    Menu LEDs: %s\r\n", carrier_spd.menu_led_support ? "true" : "false");
    
}