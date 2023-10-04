
#include "carrier_spd.h"
#include <stdio.h>

void CarrierSPDGetString(void) {
    
    Nop();
    
}

// prints SPD data to terminal
void CarrierSPDPrintString(void) {

    printf("    Retrieved Carrier Board Serial Presence Detect (SPD) Settings:\r\n");
    printf("        Tube Type: %s\r\n", carrier_spd.tube_type);
    printf("        Carrier Board Rev: %c\r\n", carrier_spd.board_rev);
    printf("        Date of Manufacture: %u/%u/%u\r\n", carrier_spd.mfg_month, carrier_spd.mfg_day, carrier_spd.mfg_year);
    printf("        Backlight: %s\r\n", carrier_spd.backlight_support ? "true" : "false");
    printf("        Elapsed Time Counter: %s\r\n", carrier_spd.etc_support ? "true" : "false");
    printf("        Pushbuttons: %s\r\n", carrier_spd.pushbutton_support ? "true" : "false");
    printf("        Menu LEDs: %s\r\n", carrier_spd.menu_led_support ? "true" : "false");
    printf("        Supports Seconds: %s\r\n", carrier_spd.supports_seconds ? "true" : "false");
    printf("        Supports Milliseconds: %s\r\n", carrier_spd.supports_milliseconds ? "true" : "false");
    printf("        Number of Colons: %u\r\n", carrier_spd.num_colons);
    
}