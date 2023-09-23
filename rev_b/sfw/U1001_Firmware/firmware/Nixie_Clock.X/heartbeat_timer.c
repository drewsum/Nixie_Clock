

#include "heartbeat_timer.h"

volatile uint32_t heartbeat_count;

void HEARTBEAT_TIMER_User_Handler(uint32_t status, uintptr_t context) {
    
    heartbeat_count++;
    // toggle heartbeat LED every 1000ms
    if (heartbeat_count % 1000 == 0) {
        HEARTBEAT_LED_Toggle();
        heartbeat_count = 0;
    }
    
}
