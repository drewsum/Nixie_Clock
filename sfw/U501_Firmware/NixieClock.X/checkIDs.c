/* 
 * File:   checkIDs.c
 * Author: drewmaatman
 *
 * Created on November 7, 2017, 9:30 PM
 */

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>
#include <math.h>
#include <pic.h>
#include "mcc_generated_files/mcc.h"
#include <stdio.h>
#include "global_variables.h"
#include "definitions.h"


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Check User ID Function ///////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void checkIDs(void) {
    //<editor-fold defaultstate="collapsed" desc="">    
    
    // First, check user ID to ensure this is the right version
    // of the code
    // Get the user IDs from Flash, per datasheet page 89
    // Merge into one 16bit number
    PMADRH = 0x80;
    PMADRL = 0x00; // setting flash address to read from as 0x8000
    CFGS = HIGH;
    RD = HIGH;
    NOP();
    NOP();
    unsigned short user_ID_0 = (PMDATH << 8) + PMDATL;
    while (user_ID_0 != expected_user_ID[3]); // This will endlessly loop if user ID doesn't match
    
    PMADRH = 0x80;
    PMADRL = 0x01;
    CFGS = HIGH;
    RD = HIGH;
    NOP();
    NOP();
    unsigned short user_ID_1 = (PMDATH << 8) + PMDATL;
    while (user_ID_1 != expected_user_ID[2]); // This will endlessly loop if user ID doesn't match
    
    PMADRH = 0x80;
    PMADRL = 0x02;
    CFGS = HIGH;
    RD = HIGH;
    NOP();
    NOP();
    unsigned short user_ID_2 = (PMDATH << 8) + PMDATL;
    while (user_ID_2 != expected_user_ID[1]); // This will endlessly loop if user ID doesn't match
    
    PMADRH = 0x80;
    PMADRL = 0x03;
    CFGS = HIGH;
    RD = HIGH;
    NOP();
    NOP();
    unsigned short user_ID_3 = (PMDATH << 8) + PMDATL;
    while (user_ID_3 != expected_user_ID[0]); // This will endlessly loop if user ID doesn't match
    
    
    // Next, check device ID to ensure we're the right device
    PMADRH = 0x80;
    PMADRL = 0x06; // setting flash address to read from as 0x8006, DEV
    CFGS = HIGH;
    RD = HIGH;
    NOP();
    NOP();
    unsigned short device_ID = (PMDATH << 8) + PMDATL;
    device_ID = (device_ID >> 5);    // Mask off REV bits
    while (device_ID != expected_device_ID);  // Device ID for PIC16LF1519
    
}
    
//</editor-fold>

