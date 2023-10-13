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

#ifndef _IN12_CARRIER_H    /* Guard against multiple inclusion */
#define _IN12_CARRIER_H


#include <xc.h>

#include "plib_i2c.h"
#include "lp5009_led_driver.h"
#include "tca9555_io_expander.h"
#include "ds1683_ETC.h"



// misc device I2C addresses
#define IN12_ETC_ADDR                           0x6F
#define IN12_BACKLIGHT_LED_DRIVER_1_ADDR        0x14
#define IN12_BACKLIGHT_LED_DRIVER_2_ADDR        0x15
#define IN12_BACKLIGHT_LED_DRIVER_3_ADDR        0x16
#define IN12_IO_EXPANDER_ADDR                   0x27

// these macros are used to set the color for the backlight LEDs
#define WHITE_BACKLIGHT_COLOR       255, 255, 255
#define BLACK_BACKLIGHT_COLOR       0, 0, 0
#define RED_BACKLIGHT_COLOR         255, 0, 0
#define GREEN_BACKLIGHT_COLOR       0, 255, 0
#define BLUE_BACKLIGHT_COLOR        0, 0, 255
#define YELLOW_BACKLIGHT_COLOR      255, 255, 0
#define MAGENTA_BACKLIGHT_COLOR     255, 0, 255
#define CYAN_BACKLIGHT_COLOR        0, 255, 255

// this function prints config status for misc I2C devices
void IN12I2CDevicesPrintStatus(void);

// sets up IN12 GPIO expander
void IN12GPIOExpanderInitialize(void);

// sets up backlight LED driver
void IN12BacklightInitialize(void);

// this function sets the brightness of the backlight
// backlight_brightness range is 0 to 255
void IN12BacklightSetBrightness(uint8_t backlight_brightness);

// this function sets the color of the backlight LEDs
// all arguments have range 0 to 255
void IN12BacklightSetUniformColor(uint8_t red_component, uint8_t green_component, uint8_t blue_component);

// this function initializes the logic board ETC counter
void IN12ETCInitialize(void);

// this function returns elapsed time in seconds (w/ 0.25 second granularity) for logic board from I2C elapsed time counter
double IN12GetETC(void);

// this function returns the number of power cycles for the logic board from I2C elapsed time counter
uint32_t IN12GetPowerCycles(void);

// this function initializes the devices on the IN12 carrier board and sets up internal peripherals within the PIC to drive the display
void IN12Initialize(void);


#endif /* _IN12_CARRIER_H */

/* *****************************************************************************
 End of File
 */
