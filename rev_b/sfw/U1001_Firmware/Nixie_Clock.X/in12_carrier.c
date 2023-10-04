
#include <time.h>
#include <stdio.h>

#include "in12_carrier.h""

#include "pin_macros.h"
#include "error_handler.h"
#include "lp5009_led_driver.h"
#include "usb_uart.h"
#include "terminal_control.h"

// this function prints config status for misc I2C devices
void IN12I2CDevicesPrintStatus(void) {

    LP5009PrintStatus(IN12_BACKLIGHT_LED_DRIVER_1_ADDR, &error_handler.flags.in12_backlight_led_driver_1);
    LP5009PrintStatus(IN12_BACKLIGHT_LED_DRIVER_2_ADDR, &error_handler.flags.in12_backlight_led_driver_2);
    LP5009PrintStatus(IN12_BACKLIGHT_LED_DRIVER_3_ADDR, &error_handler.flags.in12_backlight_led_driver_3);
    TCA9555IOExpanderPrintStatus(IN12_IO_EXPANDER_ADDR, &error_handler.flags.in12_gpio_expander);
    
}

// sets up IN12 GPIO expander
void IN12GPIOExpanderInitialize(void) {
 
    TCA9555IOExpanderInitialize(IN12_IO_EXPANDER_ADDR, &error_handler.flags.in12_gpio_expander);
    
}

// sets up meter backlight LED driver
void IN12BacklightInitialize(void) {
 
    softwareDelay(0x1FFF);
    
    // will need to do this over I2C
    #warning "change this to eventually only set bit 15"
    TCA9555IOExpanderSetOutput(IN12_IO_EXPANDER_ADDR, &error_handler.flags.in12_gpio_expander, 0x8000);
    
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
    LP5009SetBankBrightness(IN12_BACKLIGHT_LED_DRIVER_2_ADDR, &error_handler.flags.in12_backlight_led_driver_2, backlight_brightness);
    LP5009SetBankBrightness(IN12_BACKLIGHT_LED_DRIVER_3_ADDR, &error_handler.flags.in12_backlight_led_driver_3, backlight_brightness);
}

// this function sets the color of the meter backlight LEDs
// all arguments have range 0 to 255
void IN12BacklightSetUniformColor(uint8_t red_component, uint8_t green_component, uint8_t blue_component) {
    LP5009SetBankColor(IN12_BACKLIGHT_LED_DRIVER_1_ADDR, &error_handler.flags.in12_backlight_led_driver_1, red_component, green_component, blue_component);
    LP5009SetBankColor(IN12_BACKLIGHT_LED_DRIVER_2_ADDR, &error_handler.flags.in12_backlight_led_driver_2, red_component, green_component, blue_component);
    LP5009SetBankColor(IN12_BACKLIGHT_LED_DRIVER_3_ADDR, &error_handler.flags.in12_backlight_led_driver_3, red_component, green_component, blue_component);
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

// this function initializes the devices on the IN12 carrier board and sets up internal peripherals within the PIC to drive the display
void IN12Initialize(void) {
 
    #warning "this is hardcoded now, make this all conditional on display board SPD"
    IN12GPIOExpanderInitialize();
    printf("    IN12 Carrier GPIO Expander Initialized\r\n");
    while(usbUartCheckIfBusy());
    
    #warning "make this conditional on SPD"
    IN12BacklightInitialize();
    printf("    IN12 Carrier LED Backlight Drivers Initialized\r\n");
    while(usbUartCheckIfBusy());
    
    
    
    
    
    
    // setup display specific serial commands
    #warning "make this conditional on carrier SPD"
    usbUartAddCommand("Set Backlight Color:",
            "\b\b <color/hex>: Sets the meter backlight color. Colors include Red, Green, Blue, Yellow, Magenta, Cyan, White, and any 24 bit hex color (eg FFFFFF)",
            setBacklightColorCommand);
    usbUartAddCommand("Set Backlight Brightness:",
            "\b\b <percentage>: Sets the brightness of the meter backlight",
            setBacklightBrightneesCommand);
    
}