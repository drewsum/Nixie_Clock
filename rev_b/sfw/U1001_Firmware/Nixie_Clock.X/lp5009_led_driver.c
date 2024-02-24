#include "lp5009_led_driver.h"

#include <stdio.h>

#include "plib_i2c.h"

#include "error_handler.h"
#include "device_control.h"
#include "terminal_control.h"


// This function initializes an LED driver at passed address. Also pass pointer to error handler flag for device
void LP5009LEDDriverInitialize(uint8_t device_address, volatile uint8_t *device_error_handler_flag) {

    uint8_t output_data_array[2];
    output_data_array[0] = LP5009_RESET_REG;
    output_data_array[1] = 0xFF;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    output_data_array[0] = LP5009_DEVICE_CONFIG0_REG;
    output_data_array[1] = LP5009_DEVICE_CONFIG0_DATA;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    output_data_array[0] = LP5009_DEVICE_CONFIG1_REG;
    output_data_array[1] = LP5009_DEVICE_CONFIG1_DATA;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// this function sets the LED driver into "bank" mode
void LP5009EnableBankMode(uint8_t device_address, volatile uint8_t *device_error_handler_flag) {
 
    uint8_t output_data_array[2];
    output_data_array[0] = LP5009_LED_CONFIG0_REG;
    output_data_array[1] = 0x07;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// this function sets the LED driver into "individual" mode
void LP5009DisableBankMode(uint8_t device_address, volatile uint8_t *device_error_handler_flag) {
 
    uint8_t output_data_array[2];
    output_data_array[0] = LP5009_LED_CONFIG0_REG;
    output_data_array[1] = 0x00;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// this function sets the bank brightness for the passed LED driver
// bank_brightness_value range is 0 to 255
void LP5009SetBankBrightness(uint8_t device_address, volatile uint8_t *device_error_handler_flag, uint8_t bank_brightness_value) {
    
    uint8_t output_data_array[2];
    output_data_array[0] = LP5009_BANK_BRIGHTNES_REG;
    output_data_array[1] = bank_brightness_value;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// this function sets the bank colors (range is 0 to 255) for the three LED banks
void LP5009SetBankColor(uint8_t device_address, volatile uint8_t *device_error_handler_flag, uint8_t red_bank_color, uint8_t green_bank_color, uint8_t blue_bank_color) {
 
    uint8_t output_data_array[2];
    output_data_array[0] = LP5009_BANK_A_COLOR_REG;
    output_data_array[1] = red_bank_color;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    output_data_array[0] = LP5009_BANK_B_COLOR_REG;
    output_data_array[1] = green_bank_color;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    output_data_array[0] = LP5009_BANK_C_COLOR_REG;
    output_data_array[1] = blue_bank_color;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// this function sets the led passed to the passed brightness
void LP5009SetLEDBrightness(uint8_t device_address, volatile uint8_t *device_error_handler_flag, uint8_t led_number, uint8_t led_brightness) {
 
    uint8_t output_data_array[2];
    output_data_array[0] = LP5009_LED_0_BRIGHTNES_REG + led_number;
    output_data_array[1] = led_brightness;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// this function sets the led passed to the passed color
void LP5009SetOutputColor(uint8_t device_address, volatile uint8_t *device_error_handler_flag, uint8_t output_number, uint8_t led_color) {
 
    uint8_t output_data_array[2];
    output_data_array[0] = LP5009_OUT0_COLOR_REG + output_number;
    output_data_array[1] = led_color;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// this function prints status and config data for an LED driver at passed address
void LP5009PrintStatus(uint8_t device_address, volatile uint8_t *device_error_handler_flag) {
 
    // read status register first
    uint8_t data_reg_pointer[1];
    uint8_t readBytes[16];
    data_reg_pointer[0] = LP5009_DEVICE_CONFIG0_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_chip_en = (readBytes[0] >> 6) & 0b1;
    
    data_reg_pointer[0] = LP5009_DEVICE_CONFIG1_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_log_scale_en = (readBytes[0] >> 5) & 0b1;
    uint8_t read_power_save_en = (readBytes[0] >> 4) & 0b1;
    uint8_t read_auto_incr_en = (readBytes[0] >> 3) & 0b1;
    uint8_t read_pwm_dither_en = (readBytes[0] >> 2) & 0b1;
    uint8_t read_max_current = (readBytes[0] >> 1) & 0b1;
    uint8_t read_led_global_off = readBytes[0] & 0b1;
    
    data_reg_pointer[0] = LP5009_LED_CONFIG0_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_led2_bank = (readBytes[0] >> 2) & 0b1;
    uint8_t read_led1_bank = (readBytes[0] >> 1) & 0b1;
    uint8_t read_led0_bank = readBytes[0] & 0b1;
    
    data_reg_pointer[0] = LP5009_BANK_BRIGHTNES_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_bank_brightness = readBytes[0];
    
    data_reg_pointer[0] = LP5009_BANK_A_COLOR_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_bank_a_color = readBytes[0];
    
    data_reg_pointer[0] = LP5009_BANK_B_COLOR_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_bank_b_color = readBytes[0];
    
    data_reg_pointer[0] = LP5009_BANK_C_COLOR_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_bank_c_color = readBytes[0];
    
    data_reg_pointer[0] = LP5009_LED_0_BRIGHTNES_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_led0_brightness = readBytes[0];
    
    data_reg_pointer[0] = LP5009_LED_1_BRIGHTNES_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_led1_brightness = readBytes[0];
    
    data_reg_pointer[0] = LP5009_LED_2_BRIGHTNES_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_led2_brightness = readBytes[0];
    
    data_reg_pointer[0] = LP5009_OUT0_COLOR_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_out0 = readBytes[0];
    
    data_reg_pointer[0] = LP5009_OUT1_COLOR_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_out1 = readBytes[0];
    
    data_reg_pointer[0] = LP5009_OUT2_COLOR_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_out2 = readBytes[0];
    
    data_reg_pointer[0] = LP5009_OUT3_COLOR_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_out3 = readBytes[0];
    
    data_reg_pointer[0] = LP5009_OUT4_COLOR_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_out4 = readBytes[0];
    
    data_reg_pointer[0] = LP5009_OUT5_COLOR_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_out5 = readBytes[0];
    
    data_reg_pointer[0] = LP5009_OUT6_COLOR_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_out6 = readBytes[0];

    data_reg_pointer[0] = LP5009_OUT7_COLOR_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_out7 = readBytes[0];
    
    data_reg_pointer[0] = LP5009_OUT8_COLOR_REG;
    if(!I2CMaster_WriteRead(device_address, data_reg_pointer, 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_out8 = readBytes[0];
    
    // print out received data
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("LP5009 RGB LED Driver, located at 0x%02X\r\n", device_address);
    if (read_chip_en) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Chip is %s\r\n", read_chip_en ? "enabled" : "disabled");
    
    if (read_log_scale_en) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Brightness scaling is %s\r\n", read_log_scale_en ? "logarithmic" : "linear");
    if (read_power_save_en) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Power save is %s\r\n", read_power_save_en ? "enabled" : "disabled");
    if (read_auto_incr_en) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Register address auto increment is is %s\r\n", read_auto_incr_en ? "enabled" : "disabled");
    if (read_pwm_dither_en) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PWM dithering is %s\r\n", read_pwm_dither_en ? "enabled" : "disabled");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Maximum channel current is %s\r\n", read_max_current ? "35mA" : "25.5mA");
    if (read_led_global_off) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    LED global shutdown is %s\r\n", read_led_global_off ? "enabled" : "disabled");
    
    if (read_led0_bank) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    LED 0 bank control is %s\r\n", read_led0_bank ? "enabled" : "disabled");
    if (read_led1_bank) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    LED 1 bank control is %s\r\n", read_led1_bank ? "enabled" : "disabled");
    if (read_led2_bank) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    LED 2 bank control is %s\r\n", read_led2_bank ? "enabled" : "disabled");
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Bank brightness set to 0x%02X\r\n", read_bank_brightness);
    printf("    Bank A color set to 0x%02X\r\n", read_bank_a_color);
    printf("    Bank B color set to 0x%02X\r\n", read_bank_b_color);
    printf("    Bank C color set to 0x%02X\r\n", read_bank_c_color);
    
    printf("    LED 0 brightness set to 0x%02X\r\n", read_led0_brightness);
    printf("    LED 1 brightness set to 0x%02X\r\n", read_led1_brightness);
    printf("    LED 2 brightness set to 0x%02X\r\n", read_led2_brightness);
    
    printf("    Output 0 color set to 0x%02X\r\n", read_out0);
    printf("    Output 1 color set to 0x%02X\r\n", read_out1);
    printf("    Output 2 color set to 0x%02X\r\n", read_out2);
    printf("    Output 3 color set to 0x%02X\r\n", read_out3);
    printf("    Output 4 color set to 0x%02X\r\n", read_out4);
    printf("    Output 5 color set to 0x%02X\r\n", read_out5);
    printf("    Output 6 color set to 0x%02X\r\n", read_out6);
    printf("    Output 7 color set to 0x%02X\r\n", read_out7);
    printf("    Output 8 color set to 0x%02X\r\n", read_out8);
    
    terminalTextAttributesReset();
    
}