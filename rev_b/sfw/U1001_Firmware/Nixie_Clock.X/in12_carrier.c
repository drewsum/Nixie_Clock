
#include <time.h>
#include <stdio.h>
#include <string.h>

#include "in12_carrier.h"

#include "pin_macros.h"
#include "error_handler.h"
#include "lp5009_led_driver.h"
#include "ds1683_ETC.h"
#include "usb_uart.h"
#include "rtcc.h"
#include "terminal_control.h"
#include "carrier_spd.h"
#include "generic_multiplexing_timers.h"

// this function prints config status for misc I2C devices
void IN12I2CDevicesPrintStatus(void) {

    if (carrier_spd.backlight_support == 1) {
        LP5009PrintStatus(IN12_BACKLIGHT_LED_DRIVER_1_ADDR, &error_handler.flags.in12_backlight_led_driver_1);
        LP5009PrintStatus(IN12_BACKLIGHT_LED_DRIVER_2_ADDR, &error_handler.flags.in12_backlight_led_driver_2);
        LP5009PrintStatus(IN12_BACKLIGHT_LED_DRIVER_3_ADDR, &error_handler.flags.in12_backlight_led_driver_3);
    }
    
    TCA9555IOExpanderPrintStatus(IN12_IO_EXPANDER_ADDR, &error_handler.flags.in12_gpio_expander);
    
    if (carrier_spd.etc_support == 1) {
        DS1683PrintStatus(IN12_ETC_ADDR, &error_handler.flags.in12_etc);
    }
    
}

// sets up IN12 GPIO expander
void IN12GPIOExpanderInitialize(void) {
 
    TCA9555IOExpanderInitialize(IN12_IO_EXPANDER_ADDR, &error_handler.flags.in12_gpio_expander);
    
}

// this function reads the contents of the output registers of the IN12 GPIO expander, and sets or clears only the backlight LED enable signal
void IN12GPIOSetBacklightEnable(uint8_t led_enable_state) {
 
    // Check to see if we're starting up into a broken I2C state machine
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    // read output registers
    uint8_t data_reg_pointer[1];
    uint8_t temp[1];
    
    data_reg_pointer[0] = TCA9555_OUTPUT_PORT_1_REG;
    if(!I2CMaster_WriteRead(IN12_IO_EXPANDER_ADDR, &data_reg_pointer[0], 1, temp, 1)) {
        error_handler.flags.in12_gpio_expander = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_output_1 = temp[0];
    
    // set or clear only the bit we care about
    if (led_enable_state == 0) read_output_1 &= 0b01111111;
    else read_output_1 |= 0b10000000;
    
    // write back data with modified LED enable bit
    uint8_t output_data_array[2];
    output_data_array[0] = TCA9555_OUTPUT_PORT_1_REG;
    output_data_array[1] = read_output_1;
    if(!I2CMaster_Write(IN12_IO_EXPANDER_ADDR, output_data_array, 2)) {
        error_handler.flags.in12_gpio_expander = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// this function reads the contents of the output registers of the IN12 GPIO expander, and sets or clears only the ETC enable signal
void IN12GPIOSetETCEnable(uint8_t etc_enable_state) {
    
    // Check to see if we're starting up into a broken I2C state machine
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    // read output registers
    uint8_t data_reg_pointer[1];
    uint8_t temp[1];
    
    data_reg_pointer[0] = TCA9555_OUTPUT_PORT_1_REG;
    if(!I2CMaster_WriteRead(IN12_IO_EXPANDER_ADDR, &data_reg_pointer[0], 1, temp, 1)) {
        error_handler.flags.in12_gpio_expander = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_output_1 = temp[0];
    
    // set or clear only the bit we care about
    if (etc_enable_state == 0) read_output_1 &= 0b10111111;
    else read_output_1 |= 0b01000000;
    
    // write back data with modified LED enable bit
    uint8_t output_data_array[2];
    output_data_array[0] = TCA9555_OUTPUT_PORT_1_REG;
    output_data_array[1] = read_output_1;
    if(!I2CMaster_Write(IN12_IO_EXPANDER_ADDR, output_data_array, 2)) {
        error_handler.flags.in12_gpio_expander = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// this function sets the state of the display board LEDs to match what clock_display_state enum is set to
void IN12SetMenuLEDs(void) {
    
    // decide what to shove into the in12_display_buffer[] based on what we're showing
    switch (in12_clock_display_state) {
    
        case in12_display_time_state:
            IN12SetMenuLEDsGPIO(IN12_MENU_LEDS_DISPLAY_TIME_STATE);
            break;
            
        case in12_set_time_state:
            IN12SetMenuLEDsGPIO(IN12_MENU_LEDS_SET_TIME_STATE);
            break;
            
        case in12_display_date_state:
            IN12SetMenuLEDsGPIO(IN12_MENU_LEDS_DISPLAY_DATE_STATE);
            break;
            
        case in12_set_date_state:
            IN12SetMenuLEDsGPIO(IN12_MENU_LEDS_SET_DATE_STATE);
            break;
            
        case in12_display_weekday_state:
            IN12SetMenuLEDsGPIO(IN12_MENU_LEDS_DISPLAY_WEEKDAY_STATE);
            break;
            
        case in12_set_weekday_state:
            IN12SetMenuLEDsGPIO(IN12_MENU_LEDS_SET_WEEKDAY_STATE);
            break;
            
        case in12_display_alarm_state:
            IN12SetMenuLEDsGPIO(IN12_MENU_LEDS_DISPLAY_ALARM_STATE);
            break;
            
        case in12_set_alarm_state:
            IN12SetMenuLEDsGPIO(IN12_MENU_LEDS_SET_ALARM_STATE);
            break;
            
        case in12_alarm_enable_state:
            IN12SetMenuLEDsGPIO(IN12_MENU_LEDS_ALARM_ENABLE_STATE);
            break;
            
        case in12_set_24hr_mode_state:
            IN12SetMenuLEDsGPIO(IN12_MENU_LEDS_SET_24HR_MODE_STATE);
            break;
            
        case in12_set_brightness_state:
            IN12SetMenuLEDsGPIO(IN12_MENU_LEDS_SET_BRIGHTNESS_STATE);
            break;
            
        case in12_set_color_state:
            IN12SetMenuLEDsGPIO(IN12_MENU_LEDS_SET_COLOR_STATE);
            break;
            
        default:
            IN12SetMenuLEDsGPIO(0x0000);
            break;
        
    }
    
}

// this function checks if the current time matches the alarm time and sets the buzzer
// if the alarm is armed.
void IN12AlarmCheckMatch(void) {
 
    #warning "figure this all out"
    Nop();
//    // only evaluate this stuff if the alarm is armed and not currently sounding
//    if (in12_clock_alarm.alarm_arm && BUZZER_ENABLE_PIN == LOW) {
//     
//        // If the alarm settings and current time match, trigger the alarm
//        if (    in12_clock_alarm.alarm_hour == rtcc_shadow.hours &&
//                in12_clock_alarm.alarm_minute == rtcc_shadow.minutes &&
//                in12_clock_alarm.alarm_second == rtcc_shadow.seconds) {
//            BUZZER_ENABLE_PIN = HIGH;
//            
//        }
//        
//    }
//    
}

// sets up meter backlight LED driver
void IN12BacklightInitialize(void) {
 
    softwareDelay(0x1FFF);
    
    IN12GPIOSetBacklightEnable(1);
    
    softwareDelay(0x1FFF);
    
    LP5009LEDDriverInitialize(IN12_BACKLIGHT_LED_DRIVER_1_ADDR, &error_handler.flags.in12_backlight_led_driver_1);
    softwareDelay(100);
    LP5009LEDDriverInitialize(IN12_BACKLIGHT_LED_DRIVER_2_ADDR, &error_handler.flags.in12_backlight_led_driver_2);
    softwareDelay(100);
    LP5009LEDDriverInitialize(IN12_BACKLIGHT_LED_DRIVER_3_ADDR, &error_handler.flags.in12_backlight_led_driver_3);
    softwareDelay(100);
    LP5009EnableBankMode(IN12_BACKLIGHT_LED_DRIVER_1_ADDR, &error_handler.flags.in12_backlight_led_driver_1);
    softwareDelay(100);
    LP5009EnableBankMode(IN12_BACKLIGHT_LED_DRIVER_2_ADDR, &error_handler.flags.in12_backlight_led_driver_2);
    softwareDelay(100);
    LP5009EnableBankMode(IN12_BACKLIGHT_LED_DRIVER_3_ADDR, &error_handler.flags.in12_backlight_led_driver_3);
    softwareDelay(100);
    
}

// this function sets the brightness of the meter backlight
// backlight_brightness range is 0 to 255
void IN12BacklightSetBrightness(uint8_t backlight_brightness) {
    LP5009SetBankBrightness(IN12_BACKLIGHT_LED_DRIVER_1_ADDR, &error_handler.flags.in12_backlight_led_driver_1, backlight_brightness);
    softwareDelay(100);
    LP5009SetBankBrightness(IN12_BACKLIGHT_LED_DRIVER_2_ADDR, &error_handler.flags.in12_backlight_led_driver_2, backlight_brightness);
    softwareDelay(100);
    LP5009SetBankBrightness(IN12_BACKLIGHT_LED_DRIVER_3_ADDR, &error_handler.flags.in12_backlight_led_driver_3, backlight_brightness);
    softwareDelay(100);
}

// this function sets the color of the meter backlight LEDs
// all arguments have range 0 to 255
void IN12BacklightSetUniformColor(uint8_t red_component, uint8_t green_component, uint8_t blue_component) {
    LP5009SetBankColor(IN12_BACKLIGHT_LED_DRIVER_1_ADDR, &error_handler.flags.in12_backlight_led_driver_1, red_component, green_component, blue_component);
    softwareDelay(100);
    LP5009SetBankColor(IN12_BACKLIGHT_LED_DRIVER_2_ADDR, &error_handler.flags.in12_backlight_led_driver_2, red_component, green_component, blue_component);
    softwareDelay(100);
    LP5009SetBankColor(IN12_BACKLIGHT_LED_DRIVER_3_ADDR, &error_handler.flags.in12_backlight_led_driver_3, red_component, green_component, blue_component);
    softwareDelay(100);
}

usb_uart_command_function_t setBacklightColorCommand(char * input_str) {
 
    // Snipe out received arguments
    char backlight_args[64];
    sscanf(input_str, "Set Backlight Color: %[^\t\n\r]", backlight_args);
    
    // only do these things if we actually have arguments for this command
    if (backlight_args[0]) {

        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        if(strcmp(backlight_args, "White") == 0) {
            IN12BacklightSetUniformColor(WHITE_BACKLIGHT_COLOR);
            printf("Set backlight color to white\r\n");
        }
        else if(strcmp(backlight_args, "Black") == 0) {
            IN12BacklightSetUniformColor(BLACK_BACKLIGHT_COLOR);
            printf("Set backlight color to black\r\n");
        }
        else if(strcmp(backlight_args, "Red") == 0) {
            IN12BacklightSetUniformColor(RED_BACKLIGHT_COLOR);
            printf("Set backlight color to red\r\n");
        }
        else if(strcmp(backlight_args, "Green") == 0) {
            IN12BacklightSetUniformColor(GREEN_BACKLIGHT_COLOR);
            printf("Set backlight color to green\r\n");
        }
        else if(strcmp(backlight_args, "Blue") == 0) {
            IN12BacklightSetUniformColor(BLUE_BACKLIGHT_COLOR);
            printf("Set backlight color to blue\r\n");
        }
        else if(strcmp(backlight_args, "Magenta") == 0) {
            IN12BacklightSetUniformColor(MAGENTA_BACKLIGHT_COLOR);
            printf("Set backlight color to magenta\r\n");
        }
        else if(strcmp(backlight_args, "Yellow") == 0) {
            IN12BacklightSetUniformColor(YELLOW_BACKLIGHT_COLOR);
            printf("Set backlight color to yellow\r\n");
        }
        else if(strcmp(backlight_args, "Cyan") == 0) {
            IN12BacklightSetUniformColor(CYAN_BACKLIGHT_COLOR);
            printf("Set backlight color to cyan\r\n");
        }
        else {
         
            uint32_t parse_red;
            uint32_t parse_green;
            uint32_t parse_blue;
            sscanf(input_str, "Set Backlight Color: %02X%02X%02X", &parse_red, &parse_green, &parse_blue);
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("Setting backlight color to red = 0x%02X, green = 0x%02X, blue = 0x%02X\r\n", (uint8_t) parse_red, (uint8_t) parse_green, (uint8_t) parse_blue);
            IN12BacklightSetUniformColor((uint8_t) parse_red, (uint8_t) parse_green, (uint8_t) parse_blue);
            
        }
        terminalTextAttributesReset();
        
    }
    
    else {
     
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Please enter desired color: Red, Green, Blue, Yellow, Magenta, Cyan, White, Black, and any 24 bit hex color (eg FFFFFF)\r\n");
        terminalTextAttributesReset();
        
    }
    
}

usb_uart_command_function_t setBacklightBrightneesCommand(char * input_str) {
    
    uint32_t read_brightness;
    sscanf(input_str, "Set Backlight Brightness: %u", &read_brightness);
    
    if (read_brightness < 101) {
        IN12BacklightSetBrightness((uint8_t) read_brightness * 255 / 100);
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Set meter backlight brightness as %u%%\r\n", read_brightness);
        terminalTextAttributesReset();
    }
    else {
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Please enter a valid brightness, user entered%u%%\r\n", read_brightness);
        terminalTextAttributesReset();
    }
    
}

usb_uart_command_function_t printIN12Status(char * input_str) {
    
    CarrierSPDPrintString();

    if (carrier_spd.etc_support == 1) {
        double tof_temp = IN12GetETC();
        uint32_t tof_temp_int = (uint32_t) floor(tof_temp);
        uint32_t power_cycle_temp = IN12GetPowerCycles();

        // first print stuff for logic board
        terminalTextAttributesReset();
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        
         terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("IN-12 Carrier Elapsed Time Data:\r\n");
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        
        printf("    IN-12 Tube Elapsed Time is %s\r\n", getStringSecondsAsTime(tof_temp_int));
        printf("    IN-12 Tubes have power cycled %u times\r\n", power_cycle_temp);

    }
    
    IN12I2CDevicesPrintStatus();

    terminalTextAttributesReset();
    
}

usb_uart_command_function_t setIN12PowerCommand(char * input_str) {
 
    // Snipe out received string
    char read_string[32];
    sscanf(input_str, "Set Power: %s", read_string);
    
    if (strcmp(read_string, "On") == 0) {
    
        IN12PowerOn();
        
    }
    
    else if (strcmp(read_string, "Off") == 0) {
     
        IN12PowerOff();
        
    }
    
    else {
     
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Please enter a valid power state (On or Off)\r\n");
        terminalTextAttributesReset();
        
    }
    
}

usb_uart_command_function_t setIN12DisplayModeCommand(char * input_str) {
 
    // Snipe out received string
    char read_string[32];
    sscanf(input_str, "Set Display Mode: %s", read_string);
    
    
    if (strcmp(read_string, "Time") == 0) {
        
        in12_clock_display_state = in12_display_time_state;
        IN12SetMenuLEDs();
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Set clock display mode to Time\r\n");
        terminalTextAttributesReset();
    
    }
    
    else if (strcmp(read_string, "Date") == 0) {
        
        in12_clock_display_state = in12_display_date_state;
        IN12SetMenuLEDs();
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Set clock display mode to Date\r\n");
        terminalTextAttributesReset();
    
    }
    
    else if (strcmp(read_string, "Weekday") == 0) {
        
        in12_clock_display_state = in12_display_weekday_state;
        IN12SetMenuLEDs();
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Set clock display mode to Weekday\r\n");
        terminalTextAttributesReset();
    
    }
    
    else {
     
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Please enter a valid display mode: (Time, Date, Weekday)\r\n");
        terminalTextAttributesReset();
        
    }
    
}


#warning "Add function to set display brightness"



// this function initializes the logic board ETC counter
void IN12ETCInitialize(void) {
 
    DS1683ETCInitialize(IN12_ETC_ADDR, &error_handler.flags.in12_etc);
    
}

// this function returns elapsed time in seconds (w/ 0.25 second granularity) for logic board from I2C elapsed time counter
double IN12GetETC(void) {
 
    volatile double ret_value = DS1683GetETC(IN12_ETC_ADDR, &error_handler.flags.in12_etc);
    return ret_value;
    
}

// this function returns the number of power cycles for the logic board from I2C elapsed time counter
uint32_t IN12GetPowerCycles(void) {
 
    return (uint32_t) DS1683GetEventCount(IN12_ETC_ADDR, &error_handler.flags.in12_etc);
    
}

// this function initializes the devices on the IN12 carrier board and sets up internal peripherals within the PIC to drive the display
void IN12Initialize(void) {

    IN12GPIOExpanderInitialize();
    printf("    IN12 Carrier GPIO Expander Initialized\r\n");
    while(usbUartCheckIfBusy());
    
    
    if (carrier_spd.backlight_support == 1) {
        IN12BacklightInitialize();
        IN12BacklightSetBrightness(75);
        IN12BacklightSetUniformColor(BLACK_BACKLIGHT_COLOR);
        printf("    IN12 Carrier LED Backlight Drivers Initialized\r\n");
        while(usbUartCheckIfBusy());
        usbUartAddCommand("Set Backlight Color:",
            "\b\b <color/hex>: Sets the meter backlight color. Colors include Red, Green, Blue, Yellow, Magenta, Cyan, White, and any 24 bit hex color (eg FFFFFF)",
            setBacklightColorCommand);
        usbUartAddCommand("Set Backlight Brightness:",
            "\b\b <percentage>: Sets the brightness of the meter backlight",
            setBacklightBrightneesCommand);
    }
    
    usbUartAddCommand("Set Power:",
            "\b\b <On/Off>: Turns the clock on or off",
            setIN12PowerCommand);
    usbUartAddCommand("Set Display Mode:",
            "\b\b <Time/Date/Weekday>: Sets the display to show different clock functions",
            setIN12DisplayModeCommand);
    
    // assign handler functions for multiplexing and brightness timers
    assignGenericMultiplexingHandler(IN12MultiplexingTimerHandler);
    assignGenericBrightnessHandler(IN12BrightnessTimerHandler);
    
    // add USB UART commands specific for this carrier board
    if (carrier_spd.etc_support == 1) {
        IN12ETCInitialize();
        printf("    IN12 Carrier Elapsed Time Counter Initialized\r\n");
    }
    
    usbUartAddCommand("IN-12 Status?",
            "Prints status of devices on IN-12 Carrier Board, as well as carrier SPD data",
            printIN12Status);
    
}

// this is the callback function for the multiplexing timer, specific to IN12 carrier
multiplexing_timer_callback_t IN12MultiplexingTimerHandler(void) {
    
    // set IN12 anodes based on active_tube
    setIN12Anodes();
    
    // Set the anodes for the given VFD tube
    // only do this for tubes that display numbers, not the colons
    // inverse which number appears where, since we want data to show up left to right,
    // to match the order of characters in in12_display_buffer[]
    setIN12Cathodes(in12_display_buffer[7 - in12_active_tube]);
    
#warning "add stuff here for AMPM indication"
    
    // increment active tube and reset if needed
    in12_active_tube++;
    if (in12_active_tube > in12_tube_5) in12_active_tube = in12_tube_0;
    
    // start brightness timer
    T5CONbits.ON = 1;
    
}

// this is the calback function for the brightness timer, specific to IN12 carrier
brightness_timer_callback_t IN12BrightnessTimerHandler(void) {
    
     // stop brightness timer
    T5CONbits.ON = 0;
    
    // blank all anodes
    blankIN12Anodes();
    
    // Blank all cathodes
    blankIN12Cathodes();
    
}

// This function sets all IN12 tube anodes low
void blankIN12Anodes(void) {
 
    // Set all grids, along with colon anodes, low
    ANODE_0_PIN = LOW;
    ANODE_1_PIN = LOW;
    ANODE_2_PIN = LOW;
    ANODE_3_PIN = LOW;
    ANODE_4_PIN = LOW;
    ANODE_5_PIN = LOW;
    COLON_0_PIN = LOW;
    COLON_1_PIN = LOW;
    COLON_2_PIN = LOW;
    COLON_3_PIN = LOW;
    
}

// This function blanks all IN12 cathodes
void blankIN12Cathodes(void) {
 
    // blank all anodes
    CATHODE_0_PIN = LOW;
    CATHODE_1_PIN = LOW;
    CATHODE_2_PIN = LOW;
    CATHODE_3_PIN = LOW;
    CATHODE_4_PIN = LOW;
    CATHODE_5_PIN = LOW;
    CATHODE_6_PIN = LOW;
    CATHODE_7_PIN = LOW;
    CATHODE_8_PIN = LOW;
    CATHODE_9_PIN = LOW;
    CATHODE_DP_PIN = LOW;
    COLON_0_PIN = LOW;
    COLON_1_PIN = LOW;
    COLON_2_PIN = LOW;
    COLON_3_PIN = LOW;
    
}

// This function sets up the cathodes for driving tubes based on active_tube enum
void setIN12Anodes(void) {

    // decide what to do based on which tube we want to drive
    switch (in12_active_tube) {
     
        case in12_tube_0:
            ANODE_0_PIN = HIGH;
            break;
            
        case in12_tube_1:
            ANODE_1_PIN = HIGH;
            break;
            
        case in12_tube_2:
            ANODE_2_PIN = HIGH;
            break;
            
        case in12_tube_3:
            ANODE_3_PIN = HIGH;
            break;    
            
        case in12_tube_4:
            ANODE_4_PIN = HIGH;
            break;
            
        case in12_tube_5:
            ANODE_5_PIN = HIGH;
            break;
            
        case in12_right_colon:
            setIN12ColonCathodes(0, in12_display_buffer[5]);
            break;
            
        case in12_left_colon:
            setIN12ColonCathodes(1, in12_display_buffer[2]);
            break;
            
        default:
            break;
        
    }
    
}

// PASS A CHARACTER, NOT A NUMBER!
void setIN12Cathodes(char input_char) {
 
    // Set anodes based on input_char
    // This is a mapping of all supported characters
    // This switch statement acts as a seven segment decoder
    switch (input_char) {
        
        case '0':
            CATHODE_0_PIN = HIGH;
            break;
            
        case '1':
            CATHODE_1_PIN = HIGH;
            break;
            
        case '2':
            CATHODE_2_PIN = HIGH;
            break;
            
        case '3':
            CATHODE_3_PIN = HIGH;
            break;
            
        case '4':
            CATHODE_4_PIN = HIGH;
            break;
            
        case '5':
            CATHODE_5_PIN = HIGH;
            break;
            
        case '6':
            CATHODE_6_PIN = HIGH;
            break;
            
        case '7':
            CATHODE_7_PIN = HIGH;
            break;
            
        case '8':
            CATHODE_8_PIN = HIGH;
            break;
            
        case '9':
            CATHODE_9_PIN = HIGH;
            break;
            
    }
    
}

// This function sets cathodes for the colons
// pass a colon number (0:1) and a character to display (:, ., and *)
void setIN12ColonCathodes(uint8_t colon_number, char input_char) {
 
    // Kick out if stuff is passed incorrectly
    if (colon_number >= 2) return;
    
    if (colon_number == 0) {
     
        switch (input_char) {
         
            case '*':
                COLON_2_PIN = HIGH;
                break;
                
            case '.':
                COLON_3_PIN = HIGH;
                break;
                
            case ':':
                COLON_2_PIN = HIGH;
                COLON_3_PIN = HIGH;
                break;
            
            default:
                break;
                
        }
        
    }
    
    else if (colon_number == 1) {
     
        switch (input_char) {
         
            case '*':
                COLON_0_PIN = HIGH;
                break;
                
            case '.':
                COLON_1_PIN = HIGH;
                break;
                
            case ':':
                COLON_0_PIN = HIGH;
                COLON_1_PIN = HIGH;
                break;
            
            default:
                break;
                
        }
        
    }
    
}

// this function powers on the IN12 carrier
void IN12PowerOn(void) {
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Powering IN12 Carrier Board On\r\n");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        // First, turn on POS180 power supply
    POS180_RUN_PIN = HIGH;
    uint32_t timeout = 0xFFFFFFFF;
     while (timeout > 0 && POS180_PGOOD_PIN == LOW) timeout--;
    // This if statement is true if we were bale to turn on the +5V power supply
    if (POS180_PGOOD_PIN) {
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    +180V Power Supply Enabled, +180V rail in regulation\r\n");
        while(usbUartCheckIfBusy());
    }
    else {
        POS180_RUN_PIN = LOW;
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    +180V Power Supply failed to enable\r\n");
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        return;
    }
    
    // enable ETC counter for when tubes are being multiplexed
    if (carrier_spd.etc_support) {
        IN12GPIOSetETCEnable(1);
        printf("    Set ETC Enable bit on IN12 I2C GPIO expander\r\n");
        while(usbUartCheckIfBusy());
    }
    
    if (carrier_spd.backlight_support) {
        IN12BacklightInitialize();
        IN12BacklightSetBrightness(75);
        IN12BacklightSetUniformColor(BLACK_BACKLIGHT_COLOR);
        printf("    Re-initialized IN12 LED backlight drivers\r\n");
        while(usbUartCheckIfBusy());
    }
    
    IN12SetMenuLEDs();
    
    // setup muxing timers
    genericMultiplexingTimerInitialize();
    genericBrightnessTimerInitialize();
    printf("    Multiplexing Timers Initialized\r\n");
    while(usbUartCheckIfBusy());
    terminalTextAttributesReset();
    
}

// this function powers off the IN12 carrier
void IN12PowerOff(void) {
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Powering down VFD display:\r\n");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);

    genericMultiplexingTimersStop();
    blankIN12Anodes();
    blankIN12Cathodes();
    printf("    Multiplexing Timers Suspended\r\n");
    printf("    IN12 Grids and Anodes cleared\r\n");

    POS180_RUN_PIN = LOW;
    printf("    Disabled +180V Power Supply\r\n");

    // clear the menu LEDs
    IN12SetMenuLEDsGPIO(0x0000);
    printf("    Cleared menu LEDs\r\n");
    
    if (carrier_spd.etc_support) {
        IN12GPIOSetETCEnable(0);
        printf("    Cleared ETC Enable bit on IN12 I2C GPIO expander\r\n");
        while(usbUartCheckIfBusy());
    }
    
    if (carrier_spd.backlight_support) {
        IN12GPIOSetBacklightEnable(0);
        printf("    Cleared Backlight Enable bit on IN12 I2C GPIO expander\r\n");
        while(usbUartCheckIfBusy());
    }
    
    terminalTextAttributesReset();

    // save the state that we've enabled the display
    in12_display_power_toggle_flag = 0;

    // disable alarm
    in12_clock_alarm.in12_alarm_arm = 0;
    
}

// This function sets the display board IO expander output
void IN12SetMenuLEDsGPIO(uint16_t output_data) {
 
    uint16_t read_output = TCA9555IOExpanderReadOutput(IN12_IO_EXPANDER_ADDR, &error_handler.flags.in12_gpio_expander);
    
    read_output &= 0b1100000000000000;
    read_output |= output_data;
    
    TCA9555IOExpanderSetOutput(IN12_IO_EXPANDER_ADDR, &error_handler.flags.in12_gpio_expander, read_output);
    
}

// This function updates the IN12 display based on the current state of what we want to display
// relies on global variables in in12_carrier and rtcc modules
void IN12updateClockDisplay(void) {
 
    // decide what to shove into the in12_display_buffer[] based on what we're showing
    switch (in12_clock_display_state) {
    
        case in12_display_time_state:
            if (rtcc_shadow.seconds % 2 == 0) {
                if (in12_am_pm_enable == 1 && rtcc_shadow.hours == 0) {
                    sprintf(in12_display_buffer, "%02u:%02u:%02u", 12, rtcc_shadow.minutes, rtcc_shadow.seconds);
                    in12_dp_anode_request = 0;
                }
                else if (in12_am_pm_enable == 1 && rtcc_shadow.hours > 12) {
                    sprintf(in12_display_buffer, "%02u:%02u:%02u", rtcc_shadow.hours - 12, rtcc_shadow.minutes, rtcc_shadow.seconds);
                    in12_dp_anode_request = 1;
                }
                else if (in12_am_pm_enable == 1 && rtcc_shadow.hours == 12) {
                    sprintf(in12_display_buffer, "%02u:%02u:%02u", 12, rtcc_shadow.minutes, rtcc_shadow.seconds);
                    in12_dp_anode_request = 1;
                }
                else {
                    sprintf(in12_display_buffer, "%02u:%02u:%02u", rtcc_shadow.hours, rtcc_shadow.minutes, rtcc_shadow.seconds);
                    in12_dp_anode_request = 0;
                }
            }
            else {
                if (in12_am_pm_enable == 1 && rtcc_shadow.hours == 0) {
                    sprintf(in12_display_buffer, "%02u %02u %02u", 12, rtcc_shadow.minutes, rtcc_shadow.seconds);
                    in12_dp_anode_request = 0;
                }
                else if (in12_am_pm_enable == 1 && rtcc_shadow.hours > 12) {
                    sprintf(in12_display_buffer, "%02u %02u %02u", rtcc_shadow.hours - 12, rtcc_shadow.minutes, rtcc_shadow.seconds);
                    in12_dp_anode_request = 1;
                }
                else if (in12_am_pm_enable == 1 && rtcc_shadow.hours == 12) {
                    sprintf(in12_display_buffer, "%02u %02u %02u", 12, rtcc_shadow.minutes, rtcc_shadow.seconds);
                    in12_dp_anode_request = 1;
                }
                else {
                    sprintf(in12_display_buffer, "%02u %02u %02u", rtcc_shadow.hours, rtcc_shadow.minutes, rtcc_shadow.seconds);
                    in12_dp_anode_request = 0;
                }
            }
            break;
            
        case in12_set_time_state:
            if (in12_clock_set_blank_request == 0) {
                if (in12_am_pm_enable == 1 && rtcc_shadow.hours == 0) {
                    sprintf(in12_display_buffer, "%02u:%02u:%02u", 12, rtcc_shadow.minutes, rtcc_shadow.seconds);
                    in12_dp_anode_request = 0;
                }
                else if (in12_am_pm_enable == 1 && rtcc_shadow.hours > 12) {
                    sprintf(in12_display_buffer, "%02u:%02u:%02u", rtcc_shadow.hours - 12, rtcc_shadow.minutes, rtcc_shadow.seconds);
                    in12_dp_anode_request = 1;
                }
                else if (in12_am_pm_enable == 1 && rtcc_shadow.hours == 12) {
                    sprintf(in12_display_buffer, "%02u:%02u:%02u", 12, rtcc_shadow.minutes, rtcc_shadow.seconds);
                    in12_dp_anode_request = 1;
                }
                else {
                    sprintf(in12_display_buffer, "%02u:%02u:%02u", rtcc_shadow.hours, rtcc_shadow.minutes, rtcc_shadow.seconds);
                    in12_dp_anode_request = 0;
                }
            }
            else {
                switch (in12_clock_time_setting) {
                    case in12_set_time_hours_state:
                        sprintf(in12_display_buffer, "  :%02u:%02u", rtcc_shadow.minutes, rtcc_shadow.seconds);
                        in12_dp_anode_request = 0;
                        break;
                    case in12_set_time_minutes_state:
                        if (in12_am_pm_enable == 1 && rtcc_shadow.hours == 0) {
                            sprintf(in12_display_buffer, "%02u:  :%02u", 12, rtcc_shadow.seconds);
                            in12_dp_anode_request = 0;
                        }
                        else if (in12_am_pm_enable == 1 && rtcc_shadow.hours > 12) {
                            sprintf(in12_display_buffer, "%02u:  :%02u", rtcc_shadow.hours - 12, rtcc_shadow.seconds);
                            in12_dp_anode_request = 1;
                        }
                        else if (in12_am_pm_enable == 1 && rtcc_shadow.hours == 12) {
                            sprintf(in12_display_buffer, "%02u:  :%02u", 12, rtcc_shadow.seconds);
                            in12_dp_anode_request = 1;
                        }
                        else {
                            sprintf(in12_display_buffer, "%02u:  :%02u", rtcc_shadow.hours, rtcc_shadow.seconds);
                            in12_dp_anode_request = 0;
                        }
                        break;
                    case in12_set_time_seconds_state:
                        if (in12_am_pm_enable == 1 && rtcc_shadow.hours == 0) {
                            sprintf(in12_display_buffer, "%02u:%02u:  ", 12, rtcc_shadow.minutes);
                            in12_dp_anode_request = 0;
                        }
                        else if (in12_am_pm_enable == 1 && rtcc_shadow.hours > 12) {
                            sprintf(in12_display_buffer, "%02u:%02u:  ", rtcc_shadow.hours - 12, rtcc_shadow.minutes);
                            in12_dp_anode_request = 1;
                        }
                        else if (in12_am_pm_enable == 1 && rtcc_shadow.hours == 12) {
                            sprintf(in12_display_buffer, "%02u:%02u:  ", 12, rtcc_shadow.minutes);
                            in12_dp_anode_request = 1;
                        }
                        else {
                            sprintf(in12_display_buffer, "%02u:%02u:  ", rtcc_shadow.hours, rtcc_shadow.minutes);
                            in12_dp_anode_request = 0;
                        }
                        break;
                    case in12_clock_time_setting_finished_state:
                        if (in12_am_pm_enable == 1 && rtcc_shadow.hours == 0) {
                            sprintf(in12_display_buffer, "%02u:%02u:%02u", 12, rtcc_shadow.minutes, rtcc_shadow.seconds);
                            in12_dp_anode_request = 0;
                        }
                        else if (in12_am_pm_enable == 1 && rtcc_shadow.hours > 12) {
                            sprintf(in12_display_buffer, "%02u:%02u:%02u", rtcc_shadow.hours - 12, rtcc_shadow.minutes, rtcc_shadow.seconds);
                            in12_dp_anode_request = 1;
                        }
                        else if (in12_am_pm_enable == 1 && rtcc_shadow.hours == 12) {
                            sprintf(in12_display_buffer, "%02u:%02u:%02u", 12, rtcc_shadow.minutes, rtcc_shadow.seconds);
                            in12_dp_anode_request = 1;
                        }
                        else {
                            sprintf(in12_display_buffer, "%02u:%02u:%02u", rtcc_shadow.hours, rtcc_shadow.minutes, rtcc_shadow.seconds);
                            in12_dp_anode_request = 0;
                        }
                        break;
                }
            }
            break;
            
        case in12_display_date_state:
            sprintf(in12_display_buffer, "%02u_%02u_%02u", rtcc_shadow.month, rtcc_shadow.day, rtcc_shadow.year - 2000);
            in12_dp_anode_request = 0;
            break;
            
        case in12_set_date_state:
            if (in12_clock_set_blank_request == 0) {
                sprintf(in12_display_buffer, "%02u*%02u*%02u", rtcc_shadow.month, rtcc_shadow.day, rtcc_shadow.year - 2000);
            }
            else {
                switch (in12_clock_date_setting) {
                    case in12_set_date_month_state:
                        sprintf(in12_display_buffer, "  *%02u*%02u", rtcc_shadow.day, rtcc_shadow.year - 2000);
                        break;
                    case in12_set_date_day_state:
                        sprintf(in12_display_buffer, "%02u*  *%02u", rtcc_shadow.month, rtcc_shadow.year - 2000);
                        break;
                    case in12_set_date_year_state:
                        sprintf(in12_display_buffer, "%02u*%02u*  ", rtcc_shadow.month, rtcc_shadow.day);
                        break;
                    case in12_clock_date_setting_finished_state:
                        sprintf(in12_display_buffer, "%02u*%02u*%02u", rtcc_shadow.month, rtcc_shadow.day, rtcc_shadow.year - 2000);
                        break;
                }
            }
            in12_dp_anode_request = 0;
            break;
            
        case in12_display_weekday_state:
            sprintf(in12_display_buffer, "       %u", (uint8_t) rtcc_shadow.weekday + 1);
            in12_dp_anode_request = 0;
            break;
            
        case in12_set_weekday_state:
            if (in12_clock_set_blank_request == 0) {
                sprintf(in12_display_buffer, "       %u", (uint8_t) rtcc_shadow.weekday + 1);
            }
            else {
                switch (in12_clock_weekday_setting) {
                    case in12_set_weekday_day_state:
                        sprintf(in12_display_buffer, "        ");
                        break;
                    case in12_clock_weekday_setting_finished_state:
                        sprintf(in12_display_buffer, "       %u", (uint8_t) rtcc_shadow.weekday + 1);
                        break;
                }
            }
            in12_dp_anode_request = 0;
            break;
            
        case in12_display_alarm_state:
            if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour == 0) {
                sprintf(in12_display_buffer, "%02u:%02u:%02u", 12, in12_clock_alarm.in12_alarm_minute, in12_clock_alarm.in12_alarm_second);
                in12_dp_anode_request = 0;
            }
            else if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour > 12) {
                sprintf(in12_display_buffer, "%02u:%02u:%02u", in12_clock_alarm.in12_alarm_hour - 12, in12_clock_alarm.in12_alarm_minute, in12_clock_alarm.in12_alarm_second);
                in12_dp_anode_request = 1;
            }
            else if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour == 12) {
                sprintf(in12_display_buffer, "%02u:%02u:%02u", 12, in12_clock_alarm.in12_alarm_minute, in12_clock_alarm.in12_alarm_second);
                in12_dp_anode_request = 1;
            }
            else {
                sprintf(in12_display_buffer, "%02u:%02u:%02u", in12_clock_alarm.in12_alarm_hour, in12_clock_alarm.in12_alarm_minute, in12_clock_alarm.in12_alarm_second);
                in12_dp_anode_request = 0;
            }
            break;
            
        case in12_set_alarm_state:
            if (in12_clock_set_blank_request == 0) {
                if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour == 0) {
                    sprintf(in12_display_buffer, "%02u:%02u:%02u", 12, in12_clock_alarm.in12_alarm_minute, in12_clock_alarm.in12_alarm_second);
                    in12_dp_anode_request = 0;
                }
                else if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour > 12) {
                    sprintf(in12_display_buffer, "%02u:%02u:%02u", in12_clock_alarm.in12_alarm_hour - 12, in12_clock_alarm.in12_alarm_minute, in12_clock_alarm.in12_alarm_second);
                    in12_dp_anode_request = 1;
                }
                else if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour == 12) {
                    sprintf(in12_display_buffer, "%02u:%02u:%02u", 12, in12_clock_alarm.in12_alarm_minute, in12_clock_alarm.in12_alarm_second);
                    in12_dp_anode_request = 1;
                }
                else {
                    sprintf(in12_display_buffer, "%02u:%02u:%02u", in12_clock_alarm.in12_alarm_hour, in12_clock_alarm.in12_alarm_minute, in12_clock_alarm.in12_alarm_second);
                    in12_dp_anode_request = 0;
                }
            }
            else {
                switch (in12_clock_alarm_setting) {
                    case in12_set_alarm_hours_state:
                        sprintf(in12_display_buffer, "  :%02u:%02u", in12_clock_alarm.in12_alarm_minute, in12_clock_alarm.in12_alarm_second);
                        in12_dp_anode_request = 0;
                        break;
                    case in12_set_alarm_minutes_state:
                        if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour == 0) {
                            sprintf(in12_display_buffer, "%02u:  :%02u", 12, in12_clock_alarm.in12_alarm_second);
                            in12_dp_anode_request = 0;
                        }
                        else if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour > 12) {
                            sprintf(in12_display_buffer, "%02u:  :%02u", in12_clock_alarm.in12_alarm_hour - 12, in12_clock_alarm.in12_alarm_second);
                            in12_dp_anode_request = 1;
                        }
                        else if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour == 12) {
                            sprintf(in12_display_buffer, "%02u:  :%02u", 12, in12_clock_alarm.in12_alarm_second);
                            in12_dp_anode_request = 1;
                        }
                        else {
                            sprintf(in12_display_buffer, "%02u:  :%02u", in12_clock_alarm.in12_alarm_hour, in12_clock_alarm.in12_alarm_second);
                            in12_dp_anode_request = 0;
                        }
                        break;
                    case in12_set_alarm_seconds_state:
                        if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour == 0) {
                            sprintf(in12_display_buffer, "%02u:%02u:  ", 12, in12_clock_alarm.in12_alarm_minute);
                            in12_dp_anode_request = 0;
                        }
                        else if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour > 12) {
                            sprintf(in12_display_buffer, "%02u:%02u:  ", in12_clock_alarm.in12_alarm_hour - 12, in12_clock_alarm.in12_alarm_minute);
                            in12_dp_anode_request = 1;
                        }
                        else if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour == 12) {
                            sprintf(in12_display_buffer, "%02u:%02u:  ", 12, in12_clock_alarm.in12_alarm_minute);
                            in12_dp_anode_request = 1;
                        }
                        else {
                            sprintf(in12_display_buffer, "%02u:%02u:  ", in12_clock_alarm.in12_alarm_hour, in12_clock_alarm.in12_alarm_minute);
                            in12_dp_anode_request = 0;
                        }
                        break;
                    case in12_clock_alarm_setting_finished_state:
                        if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour == 0) {
                            sprintf(in12_display_buffer, "%02u:%02u:%02u", 12, in12_clock_alarm.in12_alarm_minute, in12_clock_alarm.in12_alarm_second);
                            in12_dp_anode_request = 0;
                        }
                        else if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour > 12) {
                            sprintf(in12_display_buffer, "%02u:%02u:%02u", in12_clock_alarm.in12_alarm_hour - 12, in12_clock_alarm.in12_alarm_minute, in12_clock_alarm.in12_alarm_second);
                            in12_dp_anode_request = 1;
                        }
                        else if (in12_am_pm_enable == 1 && in12_clock_alarm.in12_alarm_hour == 12) {
                            sprintf(in12_display_buffer, "%02u:%02u:%02u", 12, in12_clock_alarm.in12_alarm_minute, in12_clock_alarm.in12_alarm_second);
                            in12_dp_anode_request = 1;
                        }
                        else {
                            sprintf(in12_display_buffer, "%02u:%02u:%02u", in12_clock_alarm.in12_alarm_hour, in12_clock_alarm.in12_alarm_minute, in12_clock_alarm.in12_alarm_second);
                            in12_dp_anode_request = 0;
                        }
                        break;
                }
            }
            break;
            
        case in12_alarm_enable_state:
            if (in12_clock_set_blank_request == 0) {
                sprintf(in12_display_buffer, "%s", in12_clock_alarm.in12_alarm_arm ? "     1" : "     0");
            }
            else {
                switch (in12_clock_alarm_enable_setting) {
                    case in12_set_alarm_arm:
                        sprintf(in12_display_buffer, "        ");
                        break;
                    case in12_clock_alarm_enable_finished_state:
                        sprintf(in12_display_buffer, "%s", in12_clock_alarm.in12_alarm_arm ? "     1" : "     0");
                        break;
                }
            }
            in12_dp_anode_request = 0;
            break;
            
        case in12_set_24hr_mode_state:
            if (in12_clock_set_blank_request == 0) {
                sprintf(in12_display_buffer, "%s", in12_am_pm_enable ? "     0" : "     1");
            }
            else {
                switch (in12_clock_24hr_setting) {
                    case in12_set_24hr_value_state:
                        sprintf(in12_display_buffer, "        ");
                        break;
                    case in12_clock_24hr_setting_finished_state:
                        sprintf(in12_display_buffer, "%s", in12_am_pm_enable ? "     0" : "     1");
                        break;
                }
            }
            in12_dp_anode_request = 0;
            break;
            
        case in12_set_brightness_state:
            if (in12_clock_set_blank_request == 0) {
                sprintf(in12_display_buffer, "      %02u", in12_display_brightness_setting / 10);
            }
            else {
                switch (in12_clock_brightness_setting) {
                    case in12_set_brightness_value_state:
                        sprintf(in12_display_buffer, "        ");
                        break;
                    case in12_clock_brightness_setting_finished_state:
                        sprintf(in12_display_buffer, "      %02u", in12_display_brightness_setting / 10);
                        break;
                }
            }
            in12_dp_anode_request = 0;
            break;
            
        default:
            in12_dp_anode_request = 0;
            break;
        
    }
    
}
