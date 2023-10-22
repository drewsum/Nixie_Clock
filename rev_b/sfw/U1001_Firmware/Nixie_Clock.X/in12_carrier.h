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
#include "generic_multiplexing_timers.h"



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

// This enum keeps track of which IN12 tube we're currently driving
// This includes the six numerals as well as the two colons
enum active_tube_e {
    
    in12_tube_0 = 0,
    in12_tube_1 = 1,
    in12_right_colon = 2,
    in12_tube_2 = 3,
    in12_tube_3 = 4,
    in12_left_colon = 5,
    in12_tube_4 = 6,
    in12_tube_5 = 7
    
} in12_active_tube;

// This buffer keeps track of which characters are displayed on which tubes
// Copy a <= 8 character string into it
// characters [2] and [5] can only display *, _ and : (these are the colons)
char in12_display_buffer[9];

// this flag is used to keep track of if the display is enabled or not
// pressing the power button toggles this
volatile uint8_t in12_display_power_toggle_flag = 0;

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

// this function reads the contents of the output registers of the IN12 GPIO expander, and sets or clears only the backlight LED enable signal
void IN12GPIOSetBacklightEnable(uint8_t led_enable_state);

// this function reads the contents of the output registers of the IN12 GPIO expander, and sets or clears only the ETC enable signal
void IN12GPIOSetETCEnable(uint8_t etc_enable_state);

// this function initializes the devices on the IN12 carrier board and sets up internal peripherals within the PIC to drive the display
void IN12Initialize(void);

// this is the callback function for the multiplexing timer, specific to IN12 carrier
multiplexing_timer_callback_t IN12MultiplexingTimerHandler(void);

// this is the calback function for the brightness timer, specific to IN12 carrier
brightness_timer_callback_t IN12BrightnessTimerHandler(void);

// This function sets all IN12 tube anodes low
void blankIN12Anodes(void);

// This function blanks all IN12 cathodes
void blankIN12Cathodes(void);

// This function sets up the cathodes for driving tubes based on active_tube enum
void setIN12Anodes(void);

// This function sets the proper anodes to display the character passed 
// PASS A CHARACTER, NOT A NUMBER!
void setIN12Cathodes(char input_char);

// This function sets cathodes for the colons
// pass a colon number (0:1) and a character to display (:, ., and *)
void setIN12ColonCathodes(uint8_t colon_number, char input_char);

// this function powers on the IN12 carrier
void IN12PowerOn(void);

// this function powers off the IN12 carrier
void IN12PowerOff(void);


#endif /* _IN12_CARRIER_H */

/* *****************************************************************************
 End of File
 */
