# Nixie_Clock

Rev B Hardware designed with KiCad 7.0.1

Rev B MCU Firmware written with MPLAB X IDE v6.15, compiled with Microchip XC32 2.30 Compiler - NOT COMPATIBLE with newer compiler versions (4.30)



## Rev A Readme:
A nixie clock designed around a PIC16LF1519

Programming notes: PIC16LF1519 (U501) is programmed through PICKIT3 interface header (J501). Firmware included in GIT repository should already be built and the hex file can be programmed directly into the flash on the PIC. If you wish to build it yourself, use Microchip's XC8 compiler, and ensure that the User ID bytes located in NVM match the expected_user_ID[] byte array saved in RAM. The values programmed into NVM are set in /mcc_generated_files/mcc.c, and are set with the line #pragma config IDLOCx = _ . Reference page 44 of the PIC16LF1519 datasheet. If you don't feel like altering user ID's, leave them unchanged in source code, and just build it as is. If user IDs and device IDs do not match, the clock will brick itself until reprogrammed with matching values.
