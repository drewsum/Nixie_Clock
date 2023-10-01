
#include <time.h>
#include <stdio.h>

#include "in12_i2c.h".h"

#include "pin_macros.h"
#include "error_handler.h"
#include "lp5009_led_driver.h"

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
