/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

// core
#include "../Nixie_Clock.X/heartbeat_timer.h"

// usb uart
#include "../Nixie_Clock.X/uthash.h"
#include "../Nixie_Clock.X/usb_uart.h"
#include "../Nixie_Clock.X/usb_uart_rx_lookup_table.h"
#include "../Nixie_Clock.X/terminal_control.h"


// usb uart stuff
// this flag is set when we need to parse a received string
extern volatile __attribute__((coherent))  uint8_t usb_uart_rx_ready;

// This is the outgoing TX USB UART buffer
extern char __attribute__((coherent)) usb_uart_tx_buffer[USB_UART_TX_BUFFER_SIZE];

// This is the incoming RX USB UART buffer
extern char __attribute__((coherent)) usb_uart_rx_buffer[USB_UART_RX_BUFFER_SIZE];

// This variable keeps track of how many bytes are used up in usb_uart_tx_buffer[]
extern volatile uint32_t usb_uart_tx_buffer_head;


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************



int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    // map the core timer ISR to the heartbeat timer handler callback function
    CORETIMER_CallbackSet(HEARTBEAT_TIMER_Handler, 0);
    
    // start the core timer/heartbeat timer
    CORETIMER_Start();
    
    // start watchdog
    WDT_Enable();
    
    // setup USB UART
    usbUartInitialize();
    
    // disable reset LED
    RESET_LED_Clear();
    
    printf("Hello, World!\r\n");
    
    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        
        // parse received USB strings if we have a new one received
        if (usb_uart_rx_ready) {
            usbUartRxLUTInterface(usb_uart_rx_buffer);
            // Determine length of received string
            uint32_t length = strlen(usb_uart_rx_buffer);
        
            // clear rx buffer
            uint32_t index;
            for (index = 0; index < length; index++) {
                usb_uart_rx_buffer[index] = '\0';
            }
        }
        
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

