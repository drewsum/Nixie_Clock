/*******************************************************************************
  GPIO PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_gpio.h UUUUUUUUU

  Summary:
    GPIO PLIB Header File

  Description:
    This library provides an interface to control and interact with Parallel
    Input/Output controller (GPIO) module.

*******************************************************************************/

/*******************************************************************************
* Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/

#ifndef PLIB_GPIO_H
#define PLIB_GPIO_H

#include <device.h>
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Data types and constants
// *****************************************************************************
// *****************************************************************************


/*** Macros for RESET_LED pin ***/
#define RESET_LED_Set()               (LATGSET = (1U<<15))
#define RESET_LED_Clear()             (LATGCLR = (1U<<15))
#define RESET_LED_Toggle()            (LATGINV= (1U<<15))
#define RESET_LED_OutputEnable()      (TRISGCLR = (1U<<15))
#define RESET_LED_InputEnable()       (TRISGSET = (1U<<15))
#define RESET_LED_Get()               ((PORTG >> 15) & 0x1U)
#define RESET_LED_PIN                  GPIO_PIN_RG15

/*** Macros for ERROR_LED pin ***/
#define ERROR_LED_Set()               (LATASET = (1U<<5))
#define ERROR_LED_Clear()             (LATACLR = (1U<<5))
#define ERROR_LED_Toggle()            (LATAINV= (1U<<5))
#define ERROR_LED_OutputEnable()      (TRISACLR = (1U<<5))
#define ERROR_LED_InputEnable()       (TRISASET = (1U<<5))
#define ERROR_LED_Get()               ((PORTA >> 5) & 0x1U)
#define ERROR_LED_PIN                  GPIO_PIN_RA5

/*** Macros for VBAT_ADC pin ***/
#define VBAT_ADC_Get()               ((PORTC >> 2) & 0x1U)
#define VBAT_ADC_PIN                  GPIO_PIN_RC2

/*** Macros for POS180_ADC pin ***/
#define POS180_ADC_Get()               ((PORTC >> 3) & 0x1U)
#define POS180_ADC_PIN                  GPIO_PIN_RC3

/*** Macros for POS90_ADC pin ***/
#define POS90_ADC_Get()               ((PORTC >> 4) & 0x1U)
#define POS90_ADC_PIN                  GPIO_PIN_RC4

/*** Macros for CATHODE_DP pin ***/
#define CATHODE_DP_Set()               (LATASET = (1U<<0))
#define CATHODE_DP_Clear()             (LATACLR = (1U<<0))
#define CATHODE_DP_Toggle()            (LATAINV= (1U<<0))
#define CATHODE_DP_OutputEnable()      (TRISACLR = (1U<<0))
#define CATHODE_DP_InputEnable()       (TRISASET = (1U<<0))
#define CATHODE_DP_Get()               ((PORTA >> 0) & 0x1U)
#define CATHODE_DP_PIN                  GPIO_PIN_RA0

/*** Macros for CATHODE_9 pin ***/
#define CATHODE_9_Set()               (LATESET = (1U<<8))
#define CATHODE_9_Clear()             (LATECLR = (1U<<8))
#define CATHODE_9_Toggle()            (LATEINV= (1U<<8))
#define CATHODE_9_OutputEnable()      (TRISECLR = (1U<<8))
#define CATHODE_9_InputEnable()       (TRISESET = (1U<<8))
#define CATHODE_9_Get()               ((PORTE >> 8) & 0x1U)
#define CATHODE_9_PIN                  GPIO_PIN_RE8

/*** Macros for CATHODE_8 pin ***/
#define CATHODE_8_Set()               (LATESET = (1U<<9))
#define CATHODE_8_Clear()             (LATECLR = (1U<<9))
#define CATHODE_8_Toggle()            (LATEINV= (1U<<9))
#define CATHODE_8_OutputEnable()      (TRISECLR = (1U<<9))
#define CATHODE_8_InputEnable()       (TRISESET = (1U<<9))
#define CATHODE_8_Get()               ((PORTE >> 9) & 0x1U)
#define CATHODE_8_PIN                  GPIO_PIN_RE9

/*** Macros for ANODE_5 pin ***/
#define ANODE_5_Set()               (LATBSET = (1U<<5))
#define ANODE_5_Clear()             (LATBCLR = (1U<<5))
#define ANODE_5_Toggle()            (LATBINV= (1U<<5))
#define ANODE_5_OutputEnable()      (TRISBCLR = (1U<<5))
#define ANODE_5_InputEnable()       (TRISBSET = (1U<<5))
#define ANODE_5_Get()               ((PORTB >> 5) & 0x1U)
#define ANODE_5_PIN                  GPIO_PIN_RB5

/*** Macros for ANODE_4 pin ***/
#define ANODE_4_Set()               (LATBSET = (1U<<4))
#define ANODE_4_Clear()             (LATBCLR = (1U<<4))
#define ANODE_4_Toggle()            (LATBINV= (1U<<4))
#define ANODE_4_OutputEnable()      (TRISBCLR = (1U<<4))
#define ANODE_4_InputEnable()       (TRISBSET = (1U<<4))
#define ANODE_4_Get()               ((PORTB >> 4) & 0x1U)
#define ANODE_4_PIN                  GPIO_PIN_RB4

/*** Macros for ANODE_3 pin ***/
#define ANODE_3_Set()               (LATBSET = (1U<<3))
#define ANODE_3_Clear()             (LATBCLR = (1U<<3))
#define ANODE_3_Toggle()            (LATBINV= (1U<<3))
#define ANODE_3_OutputEnable()      (TRISBCLR = (1U<<3))
#define ANODE_3_InputEnable()       (TRISBSET = (1U<<3))
#define ANODE_3_Get()               ((PORTB >> 3) & 0x1U)
#define ANODE_3_PIN                  GPIO_PIN_RB3

/*** Macros for ANODE_2 pin ***/
#define ANODE_2_Set()               (LATBSET = (1U<<2))
#define ANODE_2_Clear()             (LATBCLR = (1U<<2))
#define ANODE_2_Toggle()            (LATBINV= (1U<<2))
#define ANODE_2_OutputEnable()      (TRISBCLR = (1U<<2))
#define ANODE_2_InputEnable()       (TRISBSET = (1U<<2))
#define ANODE_2_Get()               ((PORTB >> 2) & 0x1U)
#define ANODE_2_PIN                  GPIO_PIN_RB2

/*** Macros for ANODE_1 pin ***/
#define ANODE_1_Set()               (LATBSET = (1U<<1))
#define ANODE_1_Clear()             (LATBCLR = (1U<<1))
#define ANODE_1_Toggle()            (LATBINV= (1U<<1))
#define ANODE_1_OutputEnable()      (TRISBCLR = (1U<<1))
#define ANODE_1_InputEnable()       (TRISBSET = (1U<<1))
#define ANODE_1_Get()               ((PORTB >> 1) & 0x1U)
#define ANODE_1_PIN                  GPIO_PIN_RB1

/*** Macros for ANODE_0 pin ***/
#define ANODE_0_Set()               (LATBSET = (1U<<0))
#define ANODE_0_Clear()             (LATBCLR = (1U<<0))
#define ANODE_0_Toggle()            (LATBINV= (1U<<0))
#define ANODE_0_OutputEnable()      (TRISBCLR = (1U<<0))
#define ANODE_0_InputEnable()       (TRISBSET = (1U<<0))
#define ANODE_0_Get()               ((PORTB >> 0) & 0x1U)
#define ANODE_0_PIN                  GPIO_PIN_RB0

/*** Macros for POS180_RUN pin ***/
#define POS180_RUN_Set()               (LATASET = (1U<<9))
#define POS180_RUN_Clear()             (LATACLR = (1U<<9))
#define POS180_RUN_Toggle()            (LATAINV= (1U<<9))
#define POS180_RUN_OutputEnable()      (TRISACLR = (1U<<9))
#define POS180_RUN_InputEnable()       (TRISASET = (1U<<9))
#define POS180_RUN_Get()               ((PORTA >> 9) & 0x1U)
#define POS180_RUN_PIN                  GPIO_PIN_RA9

/*** Macros for POS180_PGOOD pin ***/
#define POS180_PGOOD_Set()               (LATASET = (1U<<10))
#define POS180_PGOOD_Clear()             (LATACLR = (1U<<10))
#define POS180_PGOOD_Toggle()            (LATAINV= (1U<<10))
#define POS180_PGOOD_OutputEnable()      (TRISACLR = (1U<<10))
#define POS180_PGOOD_InputEnable()       (TRISASET = (1U<<10))
#define POS180_PGOOD_Get()               ((PORTA >> 10) & 0x1U)
#define POS180_PGOOD_PIN                  GPIO_PIN_RA10

/*** Macros for CATHODE_0 pin ***/
#define CATHODE_0_Set()               (LATBSET = (1U<<8))
#define CATHODE_0_Clear()             (LATBCLR = (1U<<8))
#define CATHODE_0_Toggle()            (LATBINV= (1U<<8))
#define CATHODE_0_OutputEnable()      (TRISBCLR = (1U<<8))
#define CATHODE_0_InputEnable()       (TRISBSET = (1U<<8))
#define CATHODE_0_Get()               ((PORTB >> 8) & 0x1U)
#define CATHODE_0_PIN                  GPIO_PIN_RB8

/*** Macros for CATHODE_1 pin ***/
#define CATHODE_1_Set()               (LATBSET = (1U<<9))
#define CATHODE_1_Clear()             (LATBCLR = (1U<<9))
#define CATHODE_1_Toggle()            (LATBINV= (1U<<9))
#define CATHODE_1_OutputEnable()      (TRISBCLR = (1U<<9))
#define CATHODE_1_InputEnable()       (TRISBSET = (1U<<9))
#define CATHODE_1_Get()               ((PORTB >> 9) & 0x1U)
#define CATHODE_1_PIN                  GPIO_PIN_RB9

/*** Macros for CATHODE_2 pin ***/
#define CATHODE_2_Set()               (LATBSET = (1U<<10))
#define CATHODE_2_Clear()             (LATBCLR = (1U<<10))
#define CATHODE_2_Toggle()            (LATBINV= (1U<<10))
#define CATHODE_2_OutputEnable()      (TRISBCLR = (1U<<10))
#define CATHODE_2_InputEnable()       (TRISBSET = (1U<<10))
#define CATHODE_2_Get()               ((PORTB >> 10) & 0x1U)
#define CATHODE_2_PIN                  GPIO_PIN_RB10

/*** Macros for CATHODE_3 pin ***/
#define CATHODE_3_Set()               (LATBSET = (1U<<11))
#define CATHODE_3_Clear()             (LATBCLR = (1U<<11))
#define CATHODE_3_Toggle()            (LATBINV= (1U<<11))
#define CATHODE_3_OutputEnable()      (TRISBCLR = (1U<<11))
#define CATHODE_3_InputEnable()       (TRISBSET = (1U<<11))
#define CATHODE_3_Get()               ((PORTB >> 11) & 0x1U)
#define CATHODE_3_PIN                  GPIO_PIN_RB11

/*** Macros for POS90_PGOOD pin ***/
#define POS90_PGOOD_Set()               (LATASET = (1U<<1))
#define POS90_PGOOD_Clear()             (LATACLR = (1U<<1))
#define POS90_PGOOD_Toggle()            (LATAINV= (1U<<1))
#define POS90_PGOOD_OutputEnable()      (TRISACLR = (1U<<1))
#define POS90_PGOOD_InputEnable()       (TRISASET = (1U<<1))
#define POS90_PGOOD_Get()               ((PORTA >> 1) & 0x1U)
#define POS90_PGOOD_PIN                  GPIO_PIN_RA1

/*** Macros for nRTC_HARDSTRAP pin ***/
#define nRTC_HARDSTRAP_Set()               (LATFSET = (1U<<13))
#define nRTC_HARDSTRAP_Clear()             (LATFCLR = (1U<<13))
#define nRTC_HARDSTRAP_Toggle()            (LATFINV= (1U<<13))
#define nRTC_HARDSTRAP_OutputEnable()      (TRISFCLR = (1U<<13))
#define nRTC_HARDSTRAP_InputEnable()       (TRISFSET = (1U<<13))
#define nRTC_HARDSTRAP_Get()               ((PORTF >> 13) & 0x1U)
#define nRTC_HARDSTRAP_PIN                  GPIO_PIN_RF13

/*** Macros for nETC_HARDSTRAP pin ***/
#define nETC_HARDSTRAP_Set()               (LATFSET = (1U<<12))
#define nETC_HARDSTRAP_Clear()             (LATFCLR = (1U<<12))
#define nETC_HARDSTRAP_Toggle()            (LATFINV= (1U<<12))
#define nETC_HARDSTRAP_OutputEnable()      (TRISFCLR = (1U<<12))
#define nETC_HARDSTRAP_InputEnable()       (TRISFSET = (1U<<12))
#define nETC_HARDSTRAP_Get()               ((PORTF >> 12) & 0x1U)
#define nETC_HARDSTRAP_PIN                  GPIO_PIN_RF12

/*** Macros for CATHODE_4 pin ***/
#define CATHODE_4_Set()               (LATBSET = (1U<<12))
#define CATHODE_4_Clear()             (LATBCLR = (1U<<12))
#define CATHODE_4_Toggle()            (LATBINV= (1U<<12))
#define CATHODE_4_OutputEnable()      (TRISBCLR = (1U<<12))
#define CATHODE_4_InputEnable()       (TRISBSET = (1U<<12))
#define CATHODE_4_Get()               ((PORTB >> 12) & 0x1U)
#define CATHODE_4_PIN                  GPIO_PIN_RB12

/*** Macros for CATHODE_5 pin ***/
#define CATHODE_5_Set()               (LATBSET = (1U<<13))
#define CATHODE_5_Clear()             (LATBCLR = (1U<<13))
#define CATHODE_5_Toggle()            (LATBINV= (1U<<13))
#define CATHODE_5_OutputEnable()      (TRISBCLR = (1U<<13))
#define CATHODE_5_InputEnable()       (TRISBSET = (1U<<13))
#define CATHODE_5_Get()               ((PORTB >> 13) & 0x1U)
#define CATHODE_5_PIN                  GPIO_PIN_RB13

/*** Macros for CATHODE_6 pin ***/
#define CATHODE_6_Set()               (LATBSET = (1U<<14))
#define CATHODE_6_Clear()             (LATBCLR = (1U<<14))
#define CATHODE_6_Toggle()            (LATBINV= (1U<<14))
#define CATHODE_6_OutputEnable()      (TRISBCLR = (1U<<14))
#define CATHODE_6_InputEnable()       (TRISBSET = (1U<<14))
#define CATHODE_6_Get()               ((PORTB >> 14) & 0x1U)
#define CATHODE_6_PIN                  GPIO_PIN_RB14

/*** Macros for CATHODE_7 pin ***/
#define CATHODE_7_Set()               (LATBSET = (1U<<15))
#define CATHODE_7_Clear()             (LATBCLR = (1U<<15))
#define CATHODE_7_Toggle()            (LATBINV= (1U<<15))
#define CATHODE_7_OutputEnable()      (TRISBCLR = (1U<<15))
#define CATHODE_7_InputEnable()       (TRISBSET = (1U<<15))
#define CATHODE_7_Get()               ((PORTB >> 15) & 0x1U)
#define CATHODE_7_PIN                  GPIO_PIN_RB15

/*** Macros for VBAT_PGOOD pin ***/
#define VBAT_PGOOD_Set()               (LATDSET = (1U<<15))
#define VBAT_PGOOD_Clear()             (LATDCLR = (1U<<15))
#define VBAT_PGOOD_Toggle()            (LATDINV= (1U<<15))
#define VBAT_PGOOD_OutputEnable()      (TRISDCLR = (1U<<15))
#define VBAT_PGOOD_InputEnable()       (TRISDSET = (1U<<15))
#define VBAT_PGOOD_Get()               ((PORTD >> 15) & 0x1U)
#define VBAT_PGOOD_PIN                  GPIO_PIN_RD15

/*** Macros for PIC32MZ_POSC_EC pin ***/
#define PIC32MZ_POSC_EC_Get()               ((PORTC >> 12) & 0x1U)
#define PIC32MZ_POSC_EC_PIN                  GPIO_PIN_RC12

/*** Macros for nTELEMETRY_HARDSTRAP pin ***/
#define nTELEMETRY_HARDSTRAP_Set()               (LATFSET = (1U<<8))
#define nTELEMETRY_HARDSTRAP_Clear()             (LATFCLR = (1U<<8))
#define nTELEMETRY_HARDSTRAP_Toggle()            (LATFINV= (1U<<8))
#define nTELEMETRY_HARDSTRAP_OutputEnable()      (TRISFCLR = (1U<<8))
#define nTELEMETRY_HARDSTRAP_InputEnable()       (TRISFSET = (1U<<8))
#define nTELEMETRY_HARDSTRAP_Get()               ((PORTF >> 8) & 0x1U)
#define nTELEMETRY_HARDSTRAP_PIN                  GPIO_PIN_RF8

/*** Macros for I2C_SDA pin ***/
#define I2C_SDA_Get()               ((PORTF >> 4) & 0x1U)
#define I2C_SDA_PIN                  GPIO_PIN_RF4

/*** Macros for I2C_SCL pin ***/
#define I2C_SCL_Get()               ((PORTF >> 5) & 0x1U)
#define I2C_SCL_PIN                  GPIO_PIN_RF5

/*** Macros for BUZZER_ENABLE pin ***/
#define BUZZER_ENABLE_Set()               (LATDSET = (1U<<9))
#define BUZZER_ENABLE_Clear()             (LATDCLR = (1U<<9))
#define BUZZER_ENABLE_Toggle()            (LATDINV= (1U<<9))
#define BUZZER_ENABLE_OutputEnable()      (TRISDCLR = (1U<<9))
#define BUZZER_ENABLE_InputEnable()       (TRISDSET = (1U<<9))
#define BUZZER_ENABLE_Get()               ((PORTD >> 9) & 0x1U)
#define BUZZER_ENABLE_PIN                  GPIO_PIN_RD9

/*** Macros for PUSHBUTTON_0 pin ***/
#define PUSHBUTTON_0_Set()               (LATDSET = (1U<<0))
#define PUSHBUTTON_0_Clear()             (LATDCLR = (1U<<0))
#define PUSHBUTTON_0_Toggle()            (LATDINV= (1U<<0))
#define PUSHBUTTON_0_OutputEnable()      (TRISDCLR = (1U<<0))
#define PUSHBUTTON_0_InputEnable()       (TRISDSET = (1U<<0))
#define PUSHBUTTON_0_Get()               ((PORTD >> 0) & 0x1U)
#define PUSHBUTTON_0_PIN                  GPIO_PIN_RD0

/*** Macros for PIC32MZ_REFCLK1 pin ***/
#define PIC32MZ_REFCLK1_Get()               ((PORTC >> 13) & 0x1U)
#define PIC32MZ_REFCLK1_PIN                  GPIO_PIN_RC13

/*** Macros for PUSHBUTTON_1 pin ***/
#define PUSHBUTTON_1_Set()               (LATDSET = (1U<<1))
#define PUSHBUTTON_1_Clear()             (LATDCLR = (1U<<1))
#define PUSHBUTTON_1_Toggle()            (LATDINV= (1U<<1))
#define PUSHBUTTON_1_OutputEnable()      (TRISDCLR = (1U<<1))
#define PUSHBUTTON_1_InputEnable()       (TRISDSET = (1U<<1))
#define PUSHBUTTON_1_Get()               ((PORTD >> 1) & 0x1U)
#define PUSHBUTTON_1_PIN                  GPIO_PIN_RD1

/*** Macros for PUSHBUTTON_2 pin ***/
#define PUSHBUTTON_2_Set()               (LATDSET = (1U<<2))
#define PUSHBUTTON_2_Clear()             (LATDCLR = (1U<<2))
#define PUSHBUTTON_2_Toggle()            (LATDINV= (1U<<2))
#define PUSHBUTTON_2_OutputEnable()      (TRISDCLR = (1U<<2))
#define PUSHBUTTON_2_InputEnable()       (TRISDSET = (1U<<2))
#define PUSHBUTTON_2_Get()               ((PORTD >> 2) & 0x1U)
#define PUSHBUTTON_2_PIN                  GPIO_PIN_RD2

/*** Macros for PUSHBUTTON_3 pin ***/
#define PUSHBUTTON_3_Set()               (LATDSET = (1U<<3))
#define PUSHBUTTON_3_Clear()             (LATDCLR = (1U<<3))
#define PUSHBUTTON_3_Toggle()            (LATDINV= (1U<<3))
#define PUSHBUTTON_3_OutputEnable()      (TRISDCLR = (1U<<3))
#define PUSHBUTTON_3_InputEnable()       (TRISDSET = (1U<<3))
#define PUSHBUTTON_3_Get()               ((PORTD >> 3) & 0x1U)
#define PUSHBUTTON_3_PIN                  GPIO_PIN_RD3

/*** Macros for PUSHBUTTON_4 pin ***/
#define PUSHBUTTON_4_Set()               (LATDSET = (1U<<12))
#define PUSHBUTTON_4_Clear()             (LATDCLR = (1U<<12))
#define PUSHBUTTON_4_Toggle()            (LATDINV= (1U<<12))
#define PUSHBUTTON_4_OutputEnable()      (TRISDCLR = (1U<<12))
#define PUSHBUTTON_4_InputEnable()       (TRISDSET = (1U<<12))
#define PUSHBUTTON_4_Get()               ((PORTD >> 12) & 0x1U)
#define PUSHBUTTON_4_PIN                  GPIO_PIN_RD12

/*** Macros for PUSHBUTTON_5 pin ***/
#define PUSHBUTTON_5_Set()               (LATDSET = (1U<<13))
#define PUSHBUTTON_5_Clear()             (LATDCLR = (1U<<13))
#define PUSHBUTTON_5_Toggle()            (LATDINV= (1U<<13))
#define PUSHBUTTON_5_OutputEnable()      (TRISDCLR = (1U<<13))
#define PUSHBUTTON_5_InputEnable()       (TRISDSET = (1U<<13))
#define PUSHBUTTON_5_Get()               ((PORTD >> 13) & 0x1U)
#define PUSHBUTTON_5_PIN                  GPIO_PIN_RD13

/*** Macros for PUSHBUTTON_6 pin ***/
#define PUSHBUTTON_6_Set()               (LATDSET = (1U<<4))
#define PUSHBUTTON_6_Clear()             (LATDCLR = (1U<<4))
#define PUSHBUTTON_6_Toggle()            (LATDINV= (1U<<4))
#define PUSHBUTTON_6_OutputEnable()      (TRISDCLR = (1U<<4))
#define PUSHBUTTON_6_InputEnable()       (TRISDSET = (1U<<4))
#define PUSHBUTTON_6_Get()               ((PORTD >> 4) & 0x1U)
#define PUSHBUTTON_6_PIN                  GPIO_PIN_RD4

/*** Macros for nDISPLAY_DETECT pin ***/
#define nDISPLAY_DETECT_Set()               (LATDSET = (1U<<5))
#define nDISPLAY_DETECT_Clear()             (LATDCLR = (1U<<5))
#define nDISPLAY_DETECT_Toggle()            (LATDINV= (1U<<5))
#define nDISPLAY_DETECT_OutputEnable()      (TRISDCLR = (1U<<5))
#define nDISPLAY_DETECT_InputEnable()       (TRISDSET = (1U<<5))
#define nDISPLAY_DETECT_Get()               ((PORTD >> 5) & 0x1U)
#define nDISPLAY_DETECT_PIN                  GPIO_PIN_RD5

/*** Macros for USB_UART_RX pin ***/
#define USB_UART_RX_Get()               ((PORTF >> 0) & 0x1U)
#define USB_UART_RX_PIN                  GPIO_PIN_RF0

/*** Macros for USB_UART_TX pin ***/
#define USB_UART_TX_Get()               ((PORTF >> 1) & 0x1U)
#define USB_UART_TX_PIN                  GPIO_PIN_RF1

/*** Macros for POS3P3_PGOOD pin ***/
#define POS3P3_PGOOD_Set()               (LATGSET = (1U<<1))
#define POS3P3_PGOOD_Clear()             (LATGCLR = (1U<<1))
#define POS3P3_PGOOD_Toggle()            (LATGINV= (1U<<1))
#define POS3P3_PGOOD_OutputEnable()      (TRISGCLR = (1U<<1))
#define POS3P3_PGOOD_InputEnable()       (TRISGSET = (1U<<1))
#define POS3P3_PGOOD_Get()               ((PORTG >> 1) & 0x1U)
#define POS3P3_PGOOD_PIN                  GPIO_PIN_RG1

/*** Macros for POS24_PGOOD pin ***/
#define POS24_PGOOD_Set()               (LATGSET = (1U<<0))
#define POS24_PGOOD_Clear()             (LATGCLR = (1U<<0))
#define POS24_PGOOD_Toggle()            (LATGINV= (1U<<0))
#define POS24_PGOOD_OutputEnable()      (TRISGCLR = (1U<<0))
#define POS24_PGOOD_InputEnable()       (TRISGSET = (1U<<0))
#define POS24_PGOOD_Get()               ((PORTG >> 0) & 0x1U)
#define POS24_PGOOD_PIN                  GPIO_PIN_RG0

/*** Macros for nIO_LEVEL_SHIFT_ENABLE pin ***/
#define nIO_LEVEL_SHIFT_ENABLE_Set()               (LATASET = (1U<<7))
#define nIO_LEVEL_SHIFT_ENABLE_Clear()             (LATACLR = (1U<<7))
#define nIO_LEVEL_SHIFT_ENABLE_Toggle()            (LATAINV= (1U<<7))
#define nIO_LEVEL_SHIFT_ENABLE_OutputEnable()      (TRISACLR = (1U<<7))
#define nIO_LEVEL_SHIFT_ENABLE_InputEnable()       (TRISASET = (1U<<7))
#define nIO_LEVEL_SHIFT_ENABLE_Get()               ((PORTA >> 7) & 0x1U)
#define nIO_LEVEL_SHIFT_ENABLE_PIN                  GPIO_PIN_RA7

/*** Macros for HEARTBEAT_LED pin ***/
#define HEARTBEAT_LED_Set()               (LATESET = (1U<<0))
#define HEARTBEAT_LED_Clear()             (LATECLR = (1U<<0))
#define HEARTBEAT_LED_Toggle()            (LATEINV= (1U<<0))
#define HEARTBEAT_LED_OutputEnable()      (TRISECLR = (1U<<0))
#define HEARTBEAT_LED_InputEnable()       (TRISESET = (1U<<0))
#define HEARTBEAT_LED_Get()               ((PORTE >> 0) & 0x1U)
#define HEARTBEAT_LED_PIN                  GPIO_PIN_RE0

/*** Macros for CPU_TRAP_LED pin ***/
#define CPU_TRAP_LED_Set()               (LATESET = (1U<<1))
#define CPU_TRAP_LED_Clear()             (LATECLR = (1U<<1))
#define CPU_TRAP_LED_Toggle()            (LATEINV= (1U<<1))
#define CPU_TRAP_LED_OutputEnable()      (TRISECLR = (1U<<1))
#define CPU_TRAP_LED_InputEnable()       (TRISESET = (1U<<1))
#define CPU_TRAP_LED_Get()               ((PORTE >> 1) & 0x1U)
#define CPU_TRAP_LED_PIN                  GPIO_PIN_RE1

/*** Macros for PGOOD_LED_SHDN pin ***/
#define PGOOD_LED_SHDN_Set()               (LATGSET = (1U<<12))
#define PGOOD_LED_SHDN_Clear()             (LATGCLR = (1U<<12))
#define PGOOD_LED_SHDN_Toggle()            (LATGINV= (1U<<12))
#define PGOOD_LED_SHDN_OutputEnable()      (TRISGCLR = (1U<<12))
#define PGOOD_LED_SHDN_InputEnable()       (TRISGSET = (1U<<12))
#define PGOOD_LED_SHDN_Get()               ((PORTG >> 12) & 0x1U)
#define PGOOD_LED_SHDN_PIN                  GPIO_PIN_RG12

/*** Macros for COLON_3 pin ***/
#define COLON_3_Set()               (LATGSET = (1U<<13))
#define COLON_3_Clear()             (LATGCLR = (1U<<13))
#define COLON_3_Toggle()            (LATGINV= (1U<<13))
#define COLON_3_OutputEnable()      (TRISGCLR = (1U<<13))
#define COLON_3_InputEnable()       (TRISGSET = (1U<<13))
#define COLON_3_Get()               ((PORTG >> 13) & 0x1U)
#define COLON_3_PIN                  GPIO_PIN_RG13

/*** Macros for COLON_2 pin ***/
#define COLON_2_Set()               (LATESET = (1U<<2))
#define COLON_2_Clear()             (LATECLR = (1U<<2))
#define COLON_2_Toggle()            (LATEINV= (1U<<2))
#define COLON_2_OutputEnable()      (TRISECLR = (1U<<2))
#define COLON_2_InputEnable()       (TRISESET = (1U<<2))
#define COLON_2_Get()               ((PORTE >> 2) & 0x1U)
#define COLON_2_PIN                  GPIO_PIN_RE2

/*** Macros for COLON_1 pin ***/
#define COLON_1_Set()               (LATESET = (1U<<3))
#define COLON_1_Clear()             (LATECLR = (1U<<3))
#define COLON_1_Toggle()            (LATEINV= (1U<<3))
#define COLON_1_OutputEnable()      (TRISECLR = (1U<<3))
#define COLON_1_InputEnable()       (TRISESET = (1U<<3))
#define COLON_1_Get()               ((PORTE >> 3) & 0x1U)
#define COLON_1_PIN                  GPIO_PIN_RE3

/*** Macros for COLON_0 pin ***/
#define COLON_0_Set()               (LATESET = (1U<<4))
#define COLON_0_Clear()             (LATECLR = (1U<<4))
#define COLON_0_Toggle()            (LATEINV= (1U<<4))
#define COLON_0_OutputEnable()      (TRISECLR = (1U<<4))
#define COLON_0_InputEnable()       (TRISESET = (1U<<4))
#define COLON_0_Get()               ((PORTE >> 4) & 0x1U)
#define COLON_0_PIN                  GPIO_PIN_RE4


// *****************************************************************************
/* GPIO Port

  Summary:
    Identifies the available GPIO Ports.

  Description:
    This enumeration identifies the available GPIO Ports.

  Remarks:
    The caller should not rely on the specific numbers assigned to any of
    these values as they may change from one processor to the next.

    Not all ports are available on all devices.  Refer to the specific
    device data sheet to determine which ports are supported.
*/


#define    GPIO_PORT_A  (0)
#define    GPIO_PORT_B  (1)
#define    GPIO_PORT_C  (2)
#define    GPIO_PORT_D  (3)
#define    GPIO_PORT_E  (4)
#define    GPIO_PORT_F  (5)
#define    GPIO_PORT_G  (6)
typedef uint32_t GPIO_PORT;

typedef enum
{
    GPIO_INTERRUPT_ON_MISMATCH,
    GPIO_INTERRUPT_ON_RISING_EDGE,
    GPIO_INTERRUPT_ON_FALLING_EDGE,
    GPIO_INTERRUPT_ON_BOTH_EDGES,
}GPIO_INTERRUPT_STYLE;

// *****************************************************************************
/* GPIO Port Pins

  Summary:
    Identifies the available GPIO port pins.

  Description:
    This enumeration identifies the available GPIO port pins.

  Remarks:
    The caller should not rely on the specific numbers assigned to any of
    these values as they may change from one processor to the next.

    Not all pins are available on all devices.  Refer to the specific
    device data sheet to determine which pins are supported.
*/


#define     GPIO_PIN_RA0  (0U)
#define     GPIO_PIN_RA1  (1U)
#define     GPIO_PIN_RA2  (2U)
#define     GPIO_PIN_RA3  (3U)
#define     GPIO_PIN_RA4  (4U)
#define     GPIO_PIN_RA5  (5U)
#define     GPIO_PIN_RA6  (6U)
#define     GPIO_PIN_RA7  (7U)
#define     GPIO_PIN_RA9  (9U)
#define     GPIO_PIN_RA10  (10U)
#define     GPIO_PIN_RA14  (14U)
#define     GPIO_PIN_RA15  (15U)
#define     GPIO_PIN_RB0  (16U)
#define     GPIO_PIN_RB1  (17U)
#define     GPIO_PIN_RB2  (18U)
#define     GPIO_PIN_RB3  (19U)
#define     GPIO_PIN_RB4  (20U)
#define     GPIO_PIN_RB5  (21U)
#define     GPIO_PIN_RB6  (22U)
#define     GPIO_PIN_RB7  (23U)
#define     GPIO_PIN_RB8  (24U)
#define     GPIO_PIN_RB9  (25U)
#define     GPIO_PIN_RB10  (26U)
#define     GPIO_PIN_RB11  (27U)
#define     GPIO_PIN_RB12  (28U)
#define     GPIO_PIN_RB13  (29U)
#define     GPIO_PIN_RB14  (30U)
#define     GPIO_PIN_RB15  (31U)
#define     GPIO_PIN_RC1  (33U)
#define     GPIO_PIN_RC2  (34U)
#define     GPIO_PIN_RC3  (35U)
#define     GPIO_PIN_RC4  (36U)
#define     GPIO_PIN_RC12  (44U)
#define     GPIO_PIN_RC13  (45U)
#define     GPIO_PIN_RC14  (46U)
#define     GPIO_PIN_RC15  (47U)
#define     GPIO_PIN_RD0  (48U)
#define     GPIO_PIN_RD1  (49U)
#define     GPIO_PIN_RD2  (50U)
#define     GPIO_PIN_RD3  (51U)
#define     GPIO_PIN_RD4  (52U)
#define     GPIO_PIN_RD5  (53U)
#define     GPIO_PIN_RD9  (57U)
#define     GPIO_PIN_RD10  (58U)
#define     GPIO_PIN_RD11  (59U)
#define     GPIO_PIN_RD12  (60U)
#define     GPIO_PIN_RD13  (61U)
#define     GPIO_PIN_RD14  (62U)
#define     GPIO_PIN_RD15  (63U)
#define     GPIO_PIN_RE0  (64U)
#define     GPIO_PIN_RE1  (65U)
#define     GPIO_PIN_RE2  (66U)
#define     GPIO_PIN_RE3  (67U)
#define     GPIO_PIN_RE4  (68U)
#define     GPIO_PIN_RE5  (69U)
#define     GPIO_PIN_RE6  (70U)
#define     GPIO_PIN_RE7  (71U)
#define     GPIO_PIN_RE8  (72U)
#define     GPIO_PIN_RE9  (73U)
#define     GPIO_PIN_RF0  (80U)
#define     GPIO_PIN_RF1  (81U)
#define     GPIO_PIN_RF2  (82U)
#define     GPIO_PIN_RF3  (83U)
#define     GPIO_PIN_RF4  (84U)
#define     GPIO_PIN_RF5  (85U)
#define     GPIO_PIN_RF8  (88U)
#define     GPIO_PIN_RF12  (92U)
#define     GPIO_PIN_RF13  (93U)
#define     GPIO_PIN_RG0  (96U)
#define     GPIO_PIN_RG1  (97U)
#define     GPIO_PIN_RG6  (102U)
#define     GPIO_PIN_RG7  (103U)
#define     GPIO_PIN_RG8  (104U)
#define     GPIO_PIN_RG9  (105U)
#define     GPIO_PIN_RG12  (108U)
#define     GPIO_PIN_RG13  (109U)
#define     GPIO_PIN_RG14  (110U)
#define     GPIO_PIN_RG15  (111U)

    /* This element should not be used in any of the GPIO APIs.
       It will be used by other modules or application to denote that none of the GPIO Pin is used */
#define    GPIO_PIN_NONE   (-1)

typedef uint32_t GPIO_PIN;


void GPIO_Initialize(void);

// *****************************************************************************
// *****************************************************************************
// Section: GPIO Functions which operates on multiple pins of a port
// *****************************************************************************
// *****************************************************************************

uint32_t GPIO_PortRead(GPIO_PORT port);

void GPIO_PortWrite(GPIO_PORT port, uint32_t mask, uint32_t value);

uint32_t GPIO_PortLatchRead ( GPIO_PORT port );

void GPIO_PortSet(GPIO_PORT port, uint32_t mask);

void GPIO_PortClear(GPIO_PORT port, uint32_t mask);

void GPIO_PortToggle(GPIO_PORT port, uint32_t mask);

void GPIO_PortInputEnable(GPIO_PORT port, uint32_t mask);

void GPIO_PortOutputEnable(GPIO_PORT port, uint32_t mask);

// *****************************************************************************
// *****************************************************************************
// Section: GPIO Functions which operates on one pin at a time
// *****************************************************************************
// *****************************************************************************

static inline void GPIO_PinWrite(GPIO_PIN pin, bool value)
{
	 uint32_t xvalue = (uint32_t)value;
    GPIO_PortWrite((pin>>4U), (uint32_t)(0x1U) << (pin & 0xFU), (xvalue) << (pin & 0xFU));
}

static inline bool GPIO_PinRead(GPIO_PIN pin)
{
    return ((((GPIO_PortRead((GPIO_PORT)(pin>>4U))) >> (pin & 0xFU)) & 0x1U) != 0U);
}

static inline bool GPIO_PinLatchRead(GPIO_PIN pin)
{
    return (((GPIO_PortLatchRead((GPIO_PORT)(pin>>4U)) >> (pin & 0xFU)) & 0x1U) != 0U);
}

static inline void GPIO_PinToggle(GPIO_PIN pin)
{
    GPIO_PortToggle((pin>>4U), (uint32_t)0x1U << (pin & 0xFU));
}

static inline void GPIO_PinSet(GPIO_PIN pin)
{
    GPIO_PortSet((pin>>4U), (uint32_t)0x1U << (pin & 0xFU));
}

static inline void GPIO_PinClear(GPIO_PIN pin)
{
    GPIO_PortClear((pin>>4U), (uint32_t)0x1U << (pin & 0xFU));
}

static inline void GPIO_PinInputEnable(GPIO_PIN pin)
{
    GPIO_PortInputEnable((pin>>4U), (uint32_t)0x1U << (pin & 0xFU));
}

static inline void GPIO_PinOutputEnable(GPIO_PIN pin)
{
    GPIO_PortOutputEnable((pin>>4U), (uint32_t)0x1U << (pin & 0xFU));
}


// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif
// DOM-IGNORE-END
#endif // PLIB_GPIO_H
