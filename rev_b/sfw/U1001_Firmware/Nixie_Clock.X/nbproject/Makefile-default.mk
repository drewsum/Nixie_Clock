#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=adc.c adc_channels.c heartbeat_services.c power_saving.c telemetry.c pgood_monitor.c device_control.c cause_of_reset.c 32mz_interrupt_control.c error_handler.c heartbeat_timer.c prefetch.c watchdog_timer.c rtcc.c gpio_setup.c ds1683_ETC.c ds3231_rtc.c ina219_power_monitor.c mcp9804_temp_sensor.c misc_i2c_devices.c plib_i2c.c power_monitors.c temperature_sensors.c usb_uart.c terminal_control.c usb_uart_rx_lookup_table.c main.c lp5009_led_driver.c tca9555_io_expander.c in12_carrier.c carrier_spd.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/adc.o ${OBJECTDIR}/adc_channels.o ${OBJECTDIR}/heartbeat_services.o ${OBJECTDIR}/power_saving.o ${OBJECTDIR}/telemetry.o ${OBJECTDIR}/pgood_monitor.o ${OBJECTDIR}/device_control.o ${OBJECTDIR}/cause_of_reset.o ${OBJECTDIR}/32mz_interrupt_control.o ${OBJECTDIR}/error_handler.o ${OBJECTDIR}/heartbeat_timer.o ${OBJECTDIR}/prefetch.o ${OBJECTDIR}/watchdog_timer.o ${OBJECTDIR}/rtcc.o ${OBJECTDIR}/gpio_setup.o ${OBJECTDIR}/ds1683_ETC.o ${OBJECTDIR}/ds3231_rtc.o ${OBJECTDIR}/ina219_power_monitor.o ${OBJECTDIR}/mcp9804_temp_sensor.o ${OBJECTDIR}/misc_i2c_devices.o ${OBJECTDIR}/plib_i2c.o ${OBJECTDIR}/power_monitors.o ${OBJECTDIR}/temperature_sensors.o ${OBJECTDIR}/usb_uart.o ${OBJECTDIR}/terminal_control.o ${OBJECTDIR}/usb_uart_rx_lookup_table.o ${OBJECTDIR}/main.o ${OBJECTDIR}/lp5009_led_driver.o ${OBJECTDIR}/tca9555_io_expander.o ${OBJECTDIR}/in12_carrier.o ${OBJECTDIR}/carrier_spd.o
POSSIBLE_DEPFILES=${OBJECTDIR}/adc.o.d ${OBJECTDIR}/adc_channels.o.d ${OBJECTDIR}/heartbeat_services.o.d ${OBJECTDIR}/power_saving.o.d ${OBJECTDIR}/telemetry.o.d ${OBJECTDIR}/pgood_monitor.o.d ${OBJECTDIR}/device_control.o.d ${OBJECTDIR}/cause_of_reset.o.d ${OBJECTDIR}/32mz_interrupt_control.o.d ${OBJECTDIR}/error_handler.o.d ${OBJECTDIR}/heartbeat_timer.o.d ${OBJECTDIR}/prefetch.o.d ${OBJECTDIR}/watchdog_timer.o.d ${OBJECTDIR}/rtcc.o.d ${OBJECTDIR}/gpio_setup.o.d ${OBJECTDIR}/ds1683_ETC.o.d ${OBJECTDIR}/ds3231_rtc.o.d ${OBJECTDIR}/ina219_power_monitor.o.d ${OBJECTDIR}/mcp9804_temp_sensor.o.d ${OBJECTDIR}/misc_i2c_devices.o.d ${OBJECTDIR}/plib_i2c.o.d ${OBJECTDIR}/power_monitors.o.d ${OBJECTDIR}/temperature_sensors.o.d ${OBJECTDIR}/usb_uart.o.d ${OBJECTDIR}/terminal_control.o.d ${OBJECTDIR}/usb_uart_rx_lookup_table.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/lp5009_led_driver.o.d ${OBJECTDIR}/tca9555_io_expander.o.d ${OBJECTDIR}/in12_carrier.o.d ${OBJECTDIR}/carrier_spd.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/adc.o ${OBJECTDIR}/adc_channels.o ${OBJECTDIR}/heartbeat_services.o ${OBJECTDIR}/power_saving.o ${OBJECTDIR}/telemetry.o ${OBJECTDIR}/pgood_monitor.o ${OBJECTDIR}/device_control.o ${OBJECTDIR}/cause_of_reset.o ${OBJECTDIR}/32mz_interrupt_control.o ${OBJECTDIR}/error_handler.o ${OBJECTDIR}/heartbeat_timer.o ${OBJECTDIR}/prefetch.o ${OBJECTDIR}/watchdog_timer.o ${OBJECTDIR}/rtcc.o ${OBJECTDIR}/gpio_setup.o ${OBJECTDIR}/ds1683_ETC.o ${OBJECTDIR}/ds3231_rtc.o ${OBJECTDIR}/ina219_power_monitor.o ${OBJECTDIR}/mcp9804_temp_sensor.o ${OBJECTDIR}/misc_i2c_devices.o ${OBJECTDIR}/plib_i2c.o ${OBJECTDIR}/power_monitors.o ${OBJECTDIR}/temperature_sensors.o ${OBJECTDIR}/usb_uart.o ${OBJECTDIR}/terminal_control.o ${OBJECTDIR}/usb_uart_rx_lookup_table.o ${OBJECTDIR}/main.o ${OBJECTDIR}/lp5009_led_driver.o ${OBJECTDIR}/tca9555_io_expander.o ${OBJECTDIR}/in12_carrier.o ${OBJECTDIR}/carrier_spd.o

# Source Files
SOURCEFILES=adc.c adc_channels.c heartbeat_services.c power_saving.c telemetry.c pgood_monitor.c device_control.c cause_of_reset.c 32mz_interrupt_control.c error_handler.c heartbeat_timer.c prefetch.c watchdog_timer.c rtcc.c gpio_setup.c ds1683_ETC.c ds3231_rtc.c ina219_power_monitor.c mcp9804_temp_sensor.c misc_i2c_devices.c plib_i2c.c power_monitors.c temperature_sensors.c usb_uart.c terminal_control.c usb_uart_rx_lookup_table.c main.c lp5009_led_driver.c tca9555_io_expander.c in12_carrier.c carrier_spd.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM100
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/adc.o: adc.c  .generated_files/flags/default/32754da4de8888263f854a50839d2778a003d305 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.o.d 
	@${RM} ${OBJECTDIR}/adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/adc.o.d" -o ${OBJECTDIR}/adc.o adc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/adc_channels.o: adc_channels.c  .generated_files/flags/default/c8b5d3ef485e51f35ec508768df7fa846f901f0a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc_channels.o.d 
	@${RM} ${OBJECTDIR}/adc_channels.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/adc_channels.o.d" -o ${OBJECTDIR}/adc_channels.o adc_channels.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/heartbeat_services.o: heartbeat_services.c  .generated_files/flags/default/eefab8b52b81789e8d84fed62308f81628f7ba5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_services.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_services.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_services.o.d" -o ${OBJECTDIR}/heartbeat_services.o heartbeat_services.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/power_saving.o: power_saving.c  .generated_files/flags/default/9c1cfa3ef2f4693d31203254ad063763243f3b33 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_saving.o.d 
	@${RM} ${OBJECTDIR}/power_saving.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/power_saving.o.d" -o ${OBJECTDIR}/power_saving.o power_saving.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/telemetry.o: telemetry.c  .generated_files/flags/default/4ae4a84397ac632cbd11464211b47159b364a4a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/telemetry.o.d 
	@${RM} ${OBJECTDIR}/telemetry.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/telemetry.o.d" -o ${OBJECTDIR}/telemetry.o telemetry.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/pgood_monitor.o: pgood_monitor.c  .generated_files/flags/default/fd56c7b69e0c64238625f04dc8538713f07f819c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pgood_monitor.o.d 
	@${RM} ${OBJECTDIR}/pgood_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/pgood_monitor.o.d" -o ${OBJECTDIR}/pgood_monitor.o pgood_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/device_control.o: device_control.c  .generated_files/flags/default/917259553b4265a9719d848213bf8867e51d0682 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/device_control.o.d 
	@${RM} ${OBJECTDIR}/device_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/device_control.o.d" -o ${OBJECTDIR}/device_control.o device_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cause_of_reset.o: cause_of_reset.c  .generated_files/flags/default/99364d89e93e7b48b6627563f0cf5d1060915c46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cause_of_reset.o.d 
	@${RM} ${OBJECTDIR}/cause_of_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/cause_of_reset.o.d" -o ${OBJECTDIR}/cause_of_reset.o cause_of_reset.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/32mz_interrupt_control.o: 32mz_interrupt_control.c  .generated_files/flags/default/1798b31a9c86cb431ae56c8f3615f7befa07e84c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o.d 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/32mz_interrupt_control.o.d" -o ${OBJECTDIR}/32mz_interrupt_control.o 32mz_interrupt_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/error_handler.o: error_handler.c  .generated_files/flags/default/a1e2459c71a9a5c91ff9bd1415da0fadd55ff1c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/error_handler.o.d 
	@${RM} ${OBJECTDIR}/error_handler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/error_handler.o.d" -o ${OBJECTDIR}/error_handler.o error_handler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/heartbeat_timer.o: heartbeat_timer.c  .generated_files/flags/default/ccc198b2c0342e0f3bb078140580183996183328 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_timer.o.d" -o ${OBJECTDIR}/heartbeat_timer.o heartbeat_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/prefetch.o: prefetch.c  .generated_files/flags/default/959953790bdf38ab62c77d17d91f0ed2ac258af1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/prefetch.o.d 
	@${RM} ${OBJECTDIR}/prefetch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/prefetch.o.d" -o ${OBJECTDIR}/prefetch.o prefetch.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/watchdog_timer.o: watchdog_timer.c  .generated_files/flags/default/1ee53fdae0acf82b8245468ff5a8483efb6a4078 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/watchdog_timer.o.d 
	@${RM} ${OBJECTDIR}/watchdog_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/watchdog_timer.o.d" -o ${OBJECTDIR}/watchdog_timer.o watchdog_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/rtcc.o: rtcc.c  .generated_files/flags/default/ceeb7b2bc60ddf76e38231cb9b4b4b77ad3169ed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rtcc.o.d 
	@${RM} ${OBJECTDIR}/rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/rtcc.o.d" -o ${OBJECTDIR}/rtcc.o rtcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/gpio_setup.o: gpio_setup.c  .generated_files/flags/default/e51574853155fd4263d4aa2fb8949ca2fe72b1e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/gpio_setup.o.d 
	@${RM} ${OBJECTDIR}/gpio_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/gpio_setup.o.d" -o ${OBJECTDIR}/gpio_setup.o gpio_setup.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ds1683_ETC.o: ds1683_ETC.c  .generated_files/flags/default/dca1caf3334631f3dc2315870cf0d56849341c7c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o.d 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ds1683_ETC.o.d" -o ${OBJECTDIR}/ds1683_ETC.o ds1683_ETC.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ds3231_rtc.o: ds3231_rtc.c  .generated_files/flags/default/79e93450f71d323460ef780da32fc99a80b284a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o.d 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ds3231_rtc.o.d" -o ${OBJECTDIR}/ds3231_rtc.o ds3231_rtc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ina219_power_monitor.o: ina219_power_monitor.c  .generated_files/flags/default/d988efba1b63c2872f89a8178510d0022129bcbe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ina219_power_monitor.o.d 
	@${RM} ${OBJECTDIR}/ina219_power_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ina219_power_monitor.o.d" -o ${OBJECTDIR}/ina219_power_monitor.o ina219_power_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcp9804_temp_sensor.o: mcp9804_temp_sensor.c  .generated_files/flags/default/d5331791393185c4906bff259ce036e807dc1803 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcp9804_temp_sensor.o.d 
	@${RM} ${OBJECTDIR}/mcp9804_temp_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/mcp9804_temp_sensor.o.d" -o ${OBJECTDIR}/mcp9804_temp_sensor.o mcp9804_temp_sensor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/misc_i2c_devices.o: misc_i2c_devices.c  .generated_files/flags/default/79e25bec65738e54cb94d13d8931071409b1fa70 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/misc_i2c_devices.o.d" -o ${OBJECTDIR}/misc_i2c_devices.o misc_i2c_devices.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/plib_i2c.o: plib_i2c.c  .generated_files/flags/default/1f9d61fc3101f5fea8cc47b1ab24b658014478dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/plib_i2c.o.d 
	@${RM} ${OBJECTDIR}/plib_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/plib_i2c.o.d" -o ${OBJECTDIR}/plib_i2c.o plib_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/power_monitors.o: power_monitors.c  .generated_files/flags/default/c1d4e5482a60ee29597108f93d022608ffd57e35 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_monitors.o.d 
	@${RM} ${OBJECTDIR}/power_monitors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/power_monitors.o.d" -o ${OBJECTDIR}/power_monitors.o power_monitors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/temperature_sensors.o: temperature_sensors.c  .generated_files/flags/default/a5b5a9e276aa3383222b4c933ea8ee3f60bba3bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/temperature_sensors.o.d 
	@${RM} ${OBJECTDIR}/temperature_sensors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/temperature_sensors.o.d" -o ${OBJECTDIR}/temperature_sensors.o temperature_sensors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/usb_uart.o: usb_uart.c  .generated_files/flags/default/553bbfb4c3ba09f37eb0ffaadabedf6a14637ef3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart.o.d 
	@${RM} ${OBJECTDIR}/usb_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart.o.d" -o ${OBJECTDIR}/usb_uart.o usb_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/terminal_control.o: terminal_control.c  .generated_files/flags/default/2d242a0e5ced500517b4a8c58de60303c568df55 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/terminal_control.o.d 
	@${RM} ${OBJECTDIR}/terminal_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/terminal_control.o.d" -o ${OBJECTDIR}/terminal_control.o terminal_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/usb_uart_rx_lookup_table.o: usb_uart_rx_lookup_table.c  .generated_files/flags/default/7921c7a93c1c3a3a17cc3687e0936fe399f72557 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o.d 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart_rx_lookup_table.o.d" -o ${OBJECTDIR}/usb_uart_rx_lookup_table.o usb_uart_rx_lookup_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/144d330f7a6cccb02aebc77e9819d6768340ecff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/lp5009_led_driver.o: lp5009_led_driver.c  .generated_files/flags/default/910eaf13deb4ecddabcea20181fed0b951e67810 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lp5009_led_driver.o.d 
	@${RM} ${OBJECTDIR}/lp5009_led_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/lp5009_led_driver.o.d" -o ${OBJECTDIR}/lp5009_led_driver.o lp5009_led_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/tca9555_io_expander.o: tca9555_io_expander.c  .generated_files/flags/default/39093e3fb7a589cb3acdf8504f658c8b60b97943 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tca9555_io_expander.o.d 
	@${RM} ${OBJECTDIR}/tca9555_io_expander.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/tca9555_io_expander.o.d" -o ${OBJECTDIR}/tca9555_io_expander.o tca9555_io_expander.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/in12_carrier.o: in12_carrier.c  .generated_files/flags/default/be3aac98e9bb91f1d4c36601dd09b3769c68336e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/in12_carrier.o.d 
	@${RM} ${OBJECTDIR}/in12_carrier.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/in12_carrier.o.d" -o ${OBJECTDIR}/in12_carrier.o in12_carrier.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/carrier_spd.o: carrier_spd.c  .generated_files/flags/default/c764ac0c374380caaa771d2b55656ba4567d1961 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/carrier_spd.o.d 
	@${RM} ${OBJECTDIR}/carrier_spd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/carrier_spd.o.d" -o ${OBJECTDIR}/carrier_spd.o carrier_spd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/adc.o: adc.c  .generated_files/flags/default/67534187f9660ff744971dc34ad5d838f3b4c0c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.o.d 
	@${RM} ${OBJECTDIR}/adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/adc.o.d" -o ${OBJECTDIR}/adc.o adc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/adc_channels.o: adc_channels.c  .generated_files/flags/default/e6f30a08ebd2d13cf60e3692c918f2fc37789703 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc_channels.o.d 
	@${RM} ${OBJECTDIR}/adc_channels.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/adc_channels.o.d" -o ${OBJECTDIR}/adc_channels.o adc_channels.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/heartbeat_services.o: heartbeat_services.c  .generated_files/flags/default/650f0dc0240b0ea7bb8b75ad60bd10435e6b64e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_services.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_services.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_services.o.d" -o ${OBJECTDIR}/heartbeat_services.o heartbeat_services.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/power_saving.o: power_saving.c  .generated_files/flags/default/419e92c564db74c1c23940f670cc43ccfe634425 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_saving.o.d 
	@${RM} ${OBJECTDIR}/power_saving.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/power_saving.o.d" -o ${OBJECTDIR}/power_saving.o power_saving.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/telemetry.o: telemetry.c  .generated_files/flags/default/b489cbe5880139d6e6b23312e5ca3ee4a7e4a787 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/telemetry.o.d 
	@${RM} ${OBJECTDIR}/telemetry.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/telemetry.o.d" -o ${OBJECTDIR}/telemetry.o telemetry.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/pgood_monitor.o: pgood_monitor.c  .generated_files/flags/default/21dbc787157a96fb15e66f95da65453080524c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pgood_monitor.o.d 
	@${RM} ${OBJECTDIR}/pgood_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/pgood_monitor.o.d" -o ${OBJECTDIR}/pgood_monitor.o pgood_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/device_control.o: device_control.c  .generated_files/flags/default/394675349527a0ad2feced3f256fa867eee4b142 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/device_control.o.d 
	@${RM} ${OBJECTDIR}/device_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/device_control.o.d" -o ${OBJECTDIR}/device_control.o device_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cause_of_reset.o: cause_of_reset.c  .generated_files/flags/default/28145a080de4ba4b13122f67d459a25247bf13c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cause_of_reset.o.d 
	@${RM} ${OBJECTDIR}/cause_of_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/cause_of_reset.o.d" -o ${OBJECTDIR}/cause_of_reset.o cause_of_reset.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/32mz_interrupt_control.o: 32mz_interrupt_control.c  .generated_files/flags/default/9d9bcb01c30b1f707b54448b55f60b6011b74481 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o.d 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/32mz_interrupt_control.o.d" -o ${OBJECTDIR}/32mz_interrupt_control.o 32mz_interrupt_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/error_handler.o: error_handler.c  .generated_files/flags/default/49f72ed424e30b20e131c8b34da847b0580b8830 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/error_handler.o.d 
	@${RM} ${OBJECTDIR}/error_handler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/error_handler.o.d" -o ${OBJECTDIR}/error_handler.o error_handler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/heartbeat_timer.o: heartbeat_timer.c  .generated_files/flags/default/70c28a60d184953110eb13a9544a3d29e22821df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_timer.o.d" -o ${OBJECTDIR}/heartbeat_timer.o heartbeat_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/prefetch.o: prefetch.c  .generated_files/flags/default/295d4f6eaa49fc82ccc97d08ffa965e08890e324 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/prefetch.o.d 
	@${RM} ${OBJECTDIR}/prefetch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/prefetch.o.d" -o ${OBJECTDIR}/prefetch.o prefetch.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/watchdog_timer.o: watchdog_timer.c  .generated_files/flags/default/84345d726d1029218e222af45a7ba5b5423000fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/watchdog_timer.o.d 
	@${RM} ${OBJECTDIR}/watchdog_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/watchdog_timer.o.d" -o ${OBJECTDIR}/watchdog_timer.o watchdog_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/rtcc.o: rtcc.c  .generated_files/flags/default/b3a97f7fb6ea12ce182ee726f98f5acc2f504df9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rtcc.o.d 
	@${RM} ${OBJECTDIR}/rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/rtcc.o.d" -o ${OBJECTDIR}/rtcc.o rtcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/gpio_setup.o: gpio_setup.c  .generated_files/flags/default/6db52ed5825d038a618de6855e5487e56412bfe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/gpio_setup.o.d 
	@${RM} ${OBJECTDIR}/gpio_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/gpio_setup.o.d" -o ${OBJECTDIR}/gpio_setup.o gpio_setup.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ds1683_ETC.o: ds1683_ETC.c  .generated_files/flags/default/4fbab924d86a5174a79e39eb48535f3d1a05e469 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o.d 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ds1683_ETC.o.d" -o ${OBJECTDIR}/ds1683_ETC.o ds1683_ETC.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ds3231_rtc.o: ds3231_rtc.c  .generated_files/flags/default/2e18539115437a57d5e520f8eeaf5d46515fde08 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o.d 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ds3231_rtc.o.d" -o ${OBJECTDIR}/ds3231_rtc.o ds3231_rtc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ina219_power_monitor.o: ina219_power_monitor.c  .generated_files/flags/default/71fab86d13565e0e7b23fc1bd22adaf77cf99471 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ina219_power_monitor.o.d 
	@${RM} ${OBJECTDIR}/ina219_power_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ina219_power_monitor.o.d" -o ${OBJECTDIR}/ina219_power_monitor.o ina219_power_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcp9804_temp_sensor.o: mcp9804_temp_sensor.c  .generated_files/flags/default/4965a7f526b59ede4fda786b6c2b9db469f1d308 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcp9804_temp_sensor.o.d 
	@${RM} ${OBJECTDIR}/mcp9804_temp_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/mcp9804_temp_sensor.o.d" -o ${OBJECTDIR}/mcp9804_temp_sensor.o mcp9804_temp_sensor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/misc_i2c_devices.o: misc_i2c_devices.c  .generated_files/flags/default/8e7eaaa15a1b9f0a904355cc7ceb05ed3b94621a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/misc_i2c_devices.o.d" -o ${OBJECTDIR}/misc_i2c_devices.o misc_i2c_devices.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/plib_i2c.o: plib_i2c.c  .generated_files/flags/default/e60f895473c713798fcdc1ac9aabd2ea1b1d9b34 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/plib_i2c.o.d 
	@${RM} ${OBJECTDIR}/plib_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/plib_i2c.o.d" -o ${OBJECTDIR}/plib_i2c.o plib_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/power_monitors.o: power_monitors.c  .generated_files/flags/default/5593009f27628e62ef6245e9b9bfd78b33f80906 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_monitors.o.d 
	@${RM} ${OBJECTDIR}/power_monitors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/power_monitors.o.d" -o ${OBJECTDIR}/power_monitors.o power_monitors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/temperature_sensors.o: temperature_sensors.c  .generated_files/flags/default/1a49b81e632709c1742ed11a65868bd48d696203 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/temperature_sensors.o.d 
	@${RM} ${OBJECTDIR}/temperature_sensors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/temperature_sensors.o.d" -o ${OBJECTDIR}/temperature_sensors.o temperature_sensors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/usb_uart.o: usb_uart.c  .generated_files/flags/default/dcd0639ad221f693268d0b8f96d51dcbadd6b34b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart.o.d 
	@${RM} ${OBJECTDIR}/usb_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart.o.d" -o ${OBJECTDIR}/usb_uart.o usb_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/terminal_control.o: terminal_control.c  .generated_files/flags/default/3c01d26f0328aa42eeecd875501e98301063f80d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/terminal_control.o.d 
	@${RM} ${OBJECTDIR}/terminal_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/terminal_control.o.d" -o ${OBJECTDIR}/terminal_control.o terminal_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/usb_uart_rx_lookup_table.o: usb_uart_rx_lookup_table.c  .generated_files/flags/default/c58dd979dbf52d39e2218645f14926b136edc43c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o.d 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart_rx_lookup_table.o.d" -o ${OBJECTDIR}/usb_uart_rx_lookup_table.o usb_uart_rx_lookup_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/356d128753d192f976cd74544307eba93ed01287 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/lp5009_led_driver.o: lp5009_led_driver.c  .generated_files/flags/default/99901247d3753b24e24ae6c4140d8c0a57f491f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lp5009_led_driver.o.d 
	@${RM} ${OBJECTDIR}/lp5009_led_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/lp5009_led_driver.o.d" -o ${OBJECTDIR}/lp5009_led_driver.o lp5009_led_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/tca9555_io_expander.o: tca9555_io_expander.c  .generated_files/flags/default/ad9107e10c98c019f54e3a5ac0a3757b4c81fbec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tca9555_io_expander.o.d 
	@${RM} ${OBJECTDIR}/tca9555_io_expander.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/tca9555_io_expander.o.d" -o ${OBJECTDIR}/tca9555_io_expander.o tca9555_io_expander.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/in12_carrier.o: in12_carrier.c  .generated_files/flags/default/afa9676fa192245ec313e12fddbc5d4973b3428d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/in12_carrier.o.d 
	@${RM} ${OBJECTDIR}/in12_carrier.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/in12_carrier.o.d" -o ${OBJECTDIR}/in12_carrier.o in12_carrier.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/carrier_spd.o: carrier_spd.c  .generated_files/flags/default/e25fbc58e561898432d41596afcdb4f2edfbfdb2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/carrier_spd.o.d 
	@${RM} ${OBJECTDIR}/carrier_spd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/carrier_spd.o.d" -o ${OBJECTDIR}/carrier_spd.o carrier_spd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    -Wno-implicit-function-declaration -Wno-incompatible-pointer-types $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=115200,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,--allow-multiple-definition -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    -Wno-implicit-function-declaration -Wno-incompatible-pointer-types $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=115200,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,--allow-multiple-definition -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
