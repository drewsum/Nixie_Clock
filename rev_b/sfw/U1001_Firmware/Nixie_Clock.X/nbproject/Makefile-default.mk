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
SOURCEFILES_QUOTED_IF_SPACED=adc.c adc_channels.c in12_carrier.c carrier_spd.c generic_multiplexing_timers.c heartbeat_services.c power_saving.c telemetry.c pgood_monitor.c device_control.c cause_of_reset.c 32mz_interrupt_control.c error_handler.c heartbeat_timer.c prefetch.c watchdog_timer.c rtcc.c gpio_setup.c ds1683_ETC.c ds3231_rtc.c ina219_power_monitor.c mcp9804_temp_sensor.c lp5009_led_driver.c tca9555_io_expander.c misc_i2c_devices.c plib_i2c.c power_monitors.c temperature_sensors.c usb_uart.c terminal_control.c usb_uart_rx_lookup_table.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/adc.o ${OBJECTDIR}/adc_channels.o ${OBJECTDIR}/in12_carrier.o ${OBJECTDIR}/carrier_spd.o ${OBJECTDIR}/generic_multiplexing_timers.o ${OBJECTDIR}/heartbeat_services.o ${OBJECTDIR}/power_saving.o ${OBJECTDIR}/telemetry.o ${OBJECTDIR}/pgood_monitor.o ${OBJECTDIR}/device_control.o ${OBJECTDIR}/cause_of_reset.o ${OBJECTDIR}/32mz_interrupt_control.o ${OBJECTDIR}/error_handler.o ${OBJECTDIR}/heartbeat_timer.o ${OBJECTDIR}/prefetch.o ${OBJECTDIR}/watchdog_timer.o ${OBJECTDIR}/rtcc.o ${OBJECTDIR}/gpio_setup.o ${OBJECTDIR}/ds1683_ETC.o ${OBJECTDIR}/ds3231_rtc.o ${OBJECTDIR}/ina219_power_monitor.o ${OBJECTDIR}/mcp9804_temp_sensor.o ${OBJECTDIR}/lp5009_led_driver.o ${OBJECTDIR}/tca9555_io_expander.o ${OBJECTDIR}/misc_i2c_devices.o ${OBJECTDIR}/plib_i2c.o ${OBJECTDIR}/power_monitors.o ${OBJECTDIR}/temperature_sensors.o ${OBJECTDIR}/usb_uart.o ${OBJECTDIR}/terminal_control.o ${OBJECTDIR}/usb_uart_rx_lookup_table.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/adc.o.d ${OBJECTDIR}/adc_channels.o.d ${OBJECTDIR}/in12_carrier.o.d ${OBJECTDIR}/carrier_spd.o.d ${OBJECTDIR}/generic_multiplexing_timers.o.d ${OBJECTDIR}/heartbeat_services.o.d ${OBJECTDIR}/power_saving.o.d ${OBJECTDIR}/telemetry.o.d ${OBJECTDIR}/pgood_monitor.o.d ${OBJECTDIR}/device_control.o.d ${OBJECTDIR}/cause_of_reset.o.d ${OBJECTDIR}/32mz_interrupt_control.o.d ${OBJECTDIR}/error_handler.o.d ${OBJECTDIR}/heartbeat_timer.o.d ${OBJECTDIR}/prefetch.o.d ${OBJECTDIR}/watchdog_timer.o.d ${OBJECTDIR}/rtcc.o.d ${OBJECTDIR}/gpio_setup.o.d ${OBJECTDIR}/ds1683_ETC.o.d ${OBJECTDIR}/ds3231_rtc.o.d ${OBJECTDIR}/ina219_power_monitor.o.d ${OBJECTDIR}/mcp9804_temp_sensor.o.d ${OBJECTDIR}/lp5009_led_driver.o.d ${OBJECTDIR}/tca9555_io_expander.o.d ${OBJECTDIR}/misc_i2c_devices.o.d ${OBJECTDIR}/plib_i2c.o.d ${OBJECTDIR}/power_monitors.o.d ${OBJECTDIR}/temperature_sensors.o.d ${OBJECTDIR}/usb_uart.o.d ${OBJECTDIR}/terminal_control.o.d ${OBJECTDIR}/usb_uart_rx_lookup_table.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/adc.o ${OBJECTDIR}/adc_channels.o ${OBJECTDIR}/in12_carrier.o ${OBJECTDIR}/carrier_spd.o ${OBJECTDIR}/generic_multiplexing_timers.o ${OBJECTDIR}/heartbeat_services.o ${OBJECTDIR}/power_saving.o ${OBJECTDIR}/telemetry.o ${OBJECTDIR}/pgood_monitor.o ${OBJECTDIR}/device_control.o ${OBJECTDIR}/cause_of_reset.o ${OBJECTDIR}/32mz_interrupt_control.o ${OBJECTDIR}/error_handler.o ${OBJECTDIR}/heartbeat_timer.o ${OBJECTDIR}/prefetch.o ${OBJECTDIR}/watchdog_timer.o ${OBJECTDIR}/rtcc.o ${OBJECTDIR}/gpio_setup.o ${OBJECTDIR}/ds1683_ETC.o ${OBJECTDIR}/ds3231_rtc.o ${OBJECTDIR}/ina219_power_monitor.o ${OBJECTDIR}/mcp9804_temp_sensor.o ${OBJECTDIR}/lp5009_led_driver.o ${OBJECTDIR}/tca9555_io_expander.o ${OBJECTDIR}/misc_i2c_devices.o ${OBJECTDIR}/plib_i2c.o ${OBJECTDIR}/power_monitors.o ${OBJECTDIR}/temperature_sensors.o ${OBJECTDIR}/usb_uart.o ${OBJECTDIR}/terminal_control.o ${OBJECTDIR}/usb_uart_rx_lookup_table.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=adc.c adc_channels.c in12_carrier.c carrier_spd.c generic_multiplexing_timers.c heartbeat_services.c power_saving.c telemetry.c pgood_monitor.c device_control.c cause_of_reset.c 32mz_interrupt_control.c error_handler.c heartbeat_timer.c prefetch.c watchdog_timer.c rtcc.c gpio_setup.c ds1683_ETC.c ds3231_rtc.c ina219_power_monitor.c mcp9804_temp_sensor.c lp5009_led_driver.c tca9555_io_expander.c misc_i2c_devices.c plib_i2c.c power_monitors.c temperature_sensors.c usb_uart.c terminal_control.c usb_uart_rx_lookup_table.c main.c



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
${OBJECTDIR}/adc.o: adc.c  .generated_files/flags/default/b7dab2f575f6a52ab952ee0e636d1c04c490d9f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.o.d 
	@${RM} ${OBJECTDIR}/adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/adc.o.d" -o ${OBJECTDIR}/adc.o adc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/adc_channels.o: adc_channels.c  .generated_files/flags/default/c6a26e0c9cb61e9e90970f0e20de92177e88b411 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc_channels.o.d 
	@${RM} ${OBJECTDIR}/adc_channels.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/adc_channels.o.d" -o ${OBJECTDIR}/adc_channels.o adc_channels.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/in12_carrier.o: in12_carrier.c  .generated_files/flags/default/a46b22bcb233d2f4afe62f8e96cb61d80491b3e8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/in12_carrier.o.d 
	@${RM} ${OBJECTDIR}/in12_carrier.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/in12_carrier.o.d" -o ${OBJECTDIR}/in12_carrier.o in12_carrier.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/carrier_spd.o: carrier_spd.c  .generated_files/flags/default/2d0017d07cc0fa0fabf7d42ff4c78ffa41ecb9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/carrier_spd.o.d 
	@${RM} ${OBJECTDIR}/carrier_spd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/carrier_spd.o.d" -o ${OBJECTDIR}/carrier_spd.o carrier_spd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/generic_multiplexing_timers.o: generic_multiplexing_timers.c  .generated_files/flags/default/2f6d12bbd4a7820a98ca82fcbc90a5d484fd2fbc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/generic_multiplexing_timers.o.d 
	@${RM} ${OBJECTDIR}/generic_multiplexing_timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/generic_multiplexing_timers.o.d" -o ${OBJECTDIR}/generic_multiplexing_timers.o generic_multiplexing_timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/heartbeat_services.o: heartbeat_services.c  .generated_files/flags/default/ddcc138fdc6557f3f446958ad6abe02ef72bc4b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_services.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_services.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_services.o.d" -o ${OBJECTDIR}/heartbeat_services.o heartbeat_services.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/power_saving.o: power_saving.c  .generated_files/flags/default/f5cdc11041dbc884b50854c18891a48de7864034 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_saving.o.d 
	@${RM} ${OBJECTDIR}/power_saving.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/power_saving.o.d" -o ${OBJECTDIR}/power_saving.o power_saving.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/telemetry.o: telemetry.c  .generated_files/flags/default/b6d959ccb66fd18699e85e3148459dd1dda746bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/telemetry.o.d 
	@${RM} ${OBJECTDIR}/telemetry.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/telemetry.o.d" -o ${OBJECTDIR}/telemetry.o telemetry.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/pgood_monitor.o: pgood_monitor.c  .generated_files/flags/default/be324413aa19a73500f9c803a6b05c0d6305c416 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pgood_monitor.o.d 
	@${RM} ${OBJECTDIR}/pgood_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/pgood_monitor.o.d" -o ${OBJECTDIR}/pgood_monitor.o pgood_monitor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/device_control.o: device_control.c  .generated_files/flags/default/7f6d5b9ba1ef5daea66bc37c0bd6c39332c463ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/device_control.o.d 
	@${RM} ${OBJECTDIR}/device_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/device_control.o.d" -o ${OBJECTDIR}/device_control.o device_control.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/cause_of_reset.o: cause_of_reset.c  .generated_files/flags/default/8154b6d10753601d2c1616f82d9074089e4117ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cause_of_reset.o.d 
	@${RM} ${OBJECTDIR}/cause_of_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/cause_of_reset.o.d" -o ${OBJECTDIR}/cause_of_reset.o cause_of_reset.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/32mz_interrupt_control.o: 32mz_interrupt_control.c  .generated_files/flags/default/6237cbc06f45df0a5ec05b83382cc8822eedd1d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o.d 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/32mz_interrupt_control.o.d" -o ${OBJECTDIR}/32mz_interrupt_control.o 32mz_interrupt_control.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/error_handler.o: error_handler.c  .generated_files/flags/default/ae5af37f6f967a04328ba35d1f613601aa1793d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/error_handler.o.d 
	@${RM} ${OBJECTDIR}/error_handler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/error_handler.o.d" -o ${OBJECTDIR}/error_handler.o error_handler.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/heartbeat_timer.o: heartbeat_timer.c  .generated_files/flags/default/78aa8c286fb2ad519c64c83d220da4af30059653 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_timer.o.d" -o ${OBJECTDIR}/heartbeat_timer.o heartbeat_timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/prefetch.o: prefetch.c  .generated_files/flags/default/6c6f2e3a006878ffb986e5b3d73df4708724a2c0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/prefetch.o.d 
	@${RM} ${OBJECTDIR}/prefetch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/prefetch.o.d" -o ${OBJECTDIR}/prefetch.o prefetch.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/watchdog_timer.o: watchdog_timer.c  .generated_files/flags/default/61b91c093e2d6a1b8c83d06c6ee65468e43c30c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/watchdog_timer.o.d 
	@${RM} ${OBJECTDIR}/watchdog_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/watchdog_timer.o.d" -o ${OBJECTDIR}/watchdog_timer.o watchdog_timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/rtcc.o: rtcc.c  .generated_files/flags/default/224c7436524677aca4efd1205e82a40794f097f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rtcc.o.d 
	@${RM} ${OBJECTDIR}/rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/rtcc.o.d" -o ${OBJECTDIR}/rtcc.o rtcc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/gpio_setup.o: gpio_setup.c  .generated_files/flags/default/530a381f8a11c2249f9a2428d2fb409e843cdc48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/gpio_setup.o.d 
	@${RM} ${OBJECTDIR}/gpio_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/gpio_setup.o.d" -o ${OBJECTDIR}/gpio_setup.o gpio_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/ds1683_ETC.o: ds1683_ETC.c  .generated_files/flags/default/f596e439cc70d8151a52a6f9fe203b14a1d46671 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o.d 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ds1683_ETC.o.d" -o ${OBJECTDIR}/ds1683_ETC.o ds1683_ETC.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/ds3231_rtc.o: ds3231_rtc.c  .generated_files/flags/default/d0e9bc42f94304219c0ba876876476a5a2e872a6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o.d 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ds3231_rtc.o.d" -o ${OBJECTDIR}/ds3231_rtc.o ds3231_rtc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/ina219_power_monitor.o: ina219_power_monitor.c  .generated_files/flags/default/abd675a688e7cdffd27ed9c4d9b811167e13418 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ina219_power_monitor.o.d 
	@${RM} ${OBJECTDIR}/ina219_power_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ina219_power_monitor.o.d" -o ${OBJECTDIR}/ina219_power_monitor.o ina219_power_monitor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/mcp9804_temp_sensor.o: mcp9804_temp_sensor.c  .generated_files/flags/default/401b4546e0e6e9ee37db8642da1116d1213a60a7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcp9804_temp_sensor.o.d 
	@${RM} ${OBJECTDIR}/mcp9804_temp_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/mcp9804_temp_sensor.o.d" -o ${OBJECTDIR}/mcp9804_temp_sensor.o mcp9804_temp_sensor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/lp5009_led_driver.o: lp5009_led_driver.c  .generated_files/flags/default/7779195e7d653e7a8f58a4448128d61c5078101d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lp5009_led_driver.o.d 
	@${RM} ${OBJECTDIR}/lp5009_led_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/lp5009_led_driver.o.d" -o ${OBJECTDIR}/lp5009_led_driver.o lp5009_led_driver.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/tca9555_io_expander.o: tca9555_io_expander.c  .generated_files/flags/default/6df51ffe7f119318c0ed3e30d29ef80d1ee62b35 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tca9555_io_expander.o.d 
	@${RM} ${OBJECTDIR}/tca9555_io_expander.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/tca9555_io_expander.o.d" -o ${OBJECTDIR}/tca9555_io_expander.o tca9555_io_expander.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/misc_i2c_devices.o: misc_i2c_devices.c  .generated_files/flags/default/eb20a33db3dceee6ae54dbfc521133cf4741c1f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/misc_i2c_devices.o.d" -o ${OBJECTDIR}/misc_i2c_devices.o misc_i2c_devices.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/plib_i2c.o: plib_i2c.c  .generated_files/flags/default/4a376ed6bd76afa95b7d6b3c85464ae91a7ca051 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/plib_i2c.o.d 
	@${RM} ${OBJECTDIR}/plib_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/plib_i2c.o.d" -o ${OBJECTDIR}/plib_i2c.o plib_i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/power_monitors.o: power_monitors.c  .generated_files/flags/default/26fbc5f3530a77652d90ccf34ccbf154d1409ae2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_monitors.o.d 
	@${RM} ${OBJECTDIR}/power_monitors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/power_monitors.o.d" -o ${OBJECTDIR}/power_monitors.o power_monitors.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/temperature_sensors.o: temperature_sensors.c  .generated_files/flags/default/32d1009aa24bccb06a6d7c686d0e4ea9886bda9e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/temperature_sensors.o.d 
	@${RM} ${OBJECTDIR}/temperature_sensors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/temperature_sensors.o.d" -o ${OBJECTDIR}/temperature_sensors.o temperature_sensors.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/usb_uart.o: usb_uart.c  .generated_files/flags/default/6cb69dbdabcfa03ea97edbf9c41c00a53b98ab76 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart.o.d 
	@${RM} ${OBJECTDIR}/usb_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart.o.d" -o ${OBJECTDIR}/usb_uart.o usb_uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/terminal_control.o: terminal_control.c  .generated_files/flags/default/83236293c06e9a9370903880f5b4ae0a466bcd97 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/terminal_control.o.d 
	@${RM} ${OBJECTDIR}/terminal_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/terminal_control.o.d" -o ${OBJECTDIR}/terminal_control.o terminal_control.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/usb_uart_rx_lookup_table.o: usb_uart_rx_lookup_table.c  .generated_files/flags/default/87a11752b88558a57df71a1c8214dc19920291a7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o.d 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart_rx_lookup_table.o.d" -o ${OBJECTDIR}/usb_uart_rx_lookup_table.o usb_uart_rx_lookup_table.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f5f6620419c23b1ac7494835a6e654094d1e22df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
else
${OBJECTDIR}/adc.o: adc.c  .generated_files/flags/default/4105562518226db4f5f73f642d00ef0545255fcf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.o.d 
	@${RM} ${OBJECTDIR}/adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/adc.o.d" -o ${OBJECTDIR}/adc.o adc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/adc_channels.o: adc_channels.c  .generated_files/flags/default/ef54a6e5cdedf3aaf906cbf92c3b65b3df4d1a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc_channels.o.d 
	@${RM} ${OBJECTDIR}/adc_channels.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/adc_channels.o.d" -o ${OBJECTDIR}/adc_channels.o adc_channels.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/in12_carrier.o: in12_carrier.c  .generated_files/flags/default/69f9763b161727df76213827c4ef3323bb29195e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/in12_carrier.o.d 
	@${RM} ${OBJECTDIR}/in12_carrier.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/in12_carrier.o.d" -o ${OBJECTDIR}/in12_carrier.o in12_carrier.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/carrier_spd.o: carrier_spd.c  .generated_files/flags/default/90d84ba78f9973331c4391f09174ef86857e2886 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/carrier_spd.o.d 
	@${RM} ${OBJECTDIR}/carrier_spd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/carrier_spd.o.d" -o ${OBJECTDIR}/carrier_spd.o carrier_spd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/generic_multiplexing_timers.o: generic_multiplexing_timers.c  .generated_files/flags/default/4e69306781b71b46af6abfbbdb8659047a8a9533 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/generic_multiplexing_timers.o.d 
	@${RM} ${OBJECTDIR}/generic_multiplexing_timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/generic_multiplexing_timers.o.d" -o ${OBJECTDIR}/generic_multiplexing_timers.o generic_multiplexing_timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/heartbeat_services.o: heartbeat_services.c  .generated_files/flags/default/986735dd8e8017ec4ff5fc56af14c82d596260ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_services.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_services.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_services.o.d" -o ${OBJECTDIR}/heartbeat_services.o heartbeat_services.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/power_saving.o: power_saving.c  .generated_files/flags/default/2e450f649eea19a6dd1431234d7fd1ac3d04e67b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_saving.o.d 
	@${RM} ${OBJECTDIR}/power_saving.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/power_saving.o.d" -o ${OBJECTDIR}/power_saving.o power_saving.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/telemetry.o: telemetry.c  .generated_files/flags/default/269a20fe2d18e13abd3f25a55be882b925eefe29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/telemetry.o.d 
	@${RM} ${OBJECTDIR}/telemetry.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/telemetry.o.d" -o ${OBJECTDIR}/telemetry.o telemetry.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/pgood_monitor.o: pgood_monitor.c  .generated_files/flags/default/9747e3d144b6a7c761652dd895616beabb97e574 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pgood_monitor.o.d 
	@${RM} ${OBJECTDIR}/pgood_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/pgood_monitor.o.d" -o ${OBJECTDIR}/pgood_monitor.o pgood_monitor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/device_control.o: device_control.c  .generated_files/flags/default/705959562f78c2433f38b8d35379ac1d5413cf11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/device_control.o.d 
	@${RM} ${OBJECTDIR}/device_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/device_control.o.d" -o ${OBJECTDIR}/device_control.o device_control.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/cause_of_reset.o: cause_of_reset.c  .generated_files/flags/default/ab6e4f90d4fb33bcda36fb0dced8081a3137f314 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cause_of_reset.o.d 
	@${RM} ${OBJECTDIR}/cause_of_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/cause_of_reset.o.d" -o ${OBJECTDIR}/cause_of_reset.o cause_of_reset.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/32mz_interrupt_control.o: 32mz_interrupt_control.c  .generated_files/flags/default/8cf824487e02f4327388cb4b7e39db71f3f14931 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o.d 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/32mz_interrupt_control.o.d" -o ${OBJECTDIR}/32mz_interrupt_control.o 32mz_interrupt_control.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/error_handler.o: error_handler.c  .generated_files/flags/default/b7aef6a8d8d995c6bd02f63bab7e7f97a5ad57a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/error_handler.o.d 
	@${RM} ${OBJECTDIR}/error_handler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/error_handler.o.d" -o ${OBJECTDIR}/error_handler.o error_handler.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/heartbeat_timer.o: heartbeat_timer.c  .generated_files/flags/default/e3830b136e7b2a4b327c68fe1f37262a6e2c2f6d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_timer.o.d" -o ${OBJECTDIR}/heartbeat_timer.o heartbeat_timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/prefetch.o: prefetch.c  .generated_files/flags/default/e8c6d60d8b4f4316a869f64f42d589873cc392d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/prefetch.o.d 
	@${RM} ${OBJECTDIR}/prefetch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/prefetch.o.d" -o ${OBJECTDIR}/prefetch.o prefetch.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/watchdog_timer.o: watchdog_timer.c  .generated_files/flags/default/abaae3963cf5ea02e1a3e6c47bbf5b2c7a834d85 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/watchdog_timer.o.d 
	@${RM} ${OBJECTDIR}/watchdog_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/watchdog_timer.o.d" -o ${OBJECTDIR}/watchdog_timer.o watchdog_timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/rtcc.o: rtcc.c  .generated_files/flags/default/564f3cfbbbfe26f237745bcb45a0eab0a14e06b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rtcc.o.d 
	@${RM} ${OBJECTDIR}/rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/rtcc.o.d" -o ${OBJECTDIR}/rtcc.o rtcc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/gpio_setup.o: gpio_setup.c  .generated_files/flags/default/6316f7a310c5302ef83bc3303ec53b4a9c5eeb43 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/gpio_setup.o.d 
	@${RM} ${OBJECTDIR}/gpio_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/gpio_setup.o.d" -o ${OBJECTDIR}/gpio_setup.o gpio_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/ds1683_ETC.o: ds1683_ETC.c  .generated_files/flags/default/18a9b00556774571e308d1fe3d5d4b085cda0d52 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o.d 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ds1683_ETC.o.d" -o ${OBJECTDIR}/ds1683_ETC.o ds1683_ETC.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/ds3231_rtc.o: ds3231_rtc.c  .generated_files/flags/default/1f75ad1155e8b17e848549ff64427b14ea1e8dde .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o.d 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ds3231_rtc.o.d" -o ${OBJECTDIR}/ds3231_rtc.o ds3231_rtc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/ina219_power_monitor.o: ina219_power_monitor.c  .generated_files/flags/default/31a4dd069b21bfc7f9262c90541dc1b4060a3d63 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ina219_power_monitor.o.d 
	@${RM} ${OBJECTDIR}/ina219_power_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ina219_power_monitor.o.d" -o ${OBJECTDIR}/ina219_power_monitor.o ina219_power_monitor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/mcp9804_temp_sensor.o: mcp9804_temp_sensor.c  .generated_files/flags/default/d80f2b63fabc0442627c73a5babf6b7bd65e4cfc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcp9804_temp_sensor.o.d 
	@${RM} ${OBJECTDIR}/mcp9804_temp_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/mcp9804_temp_sensor.o.d" -o ${OBJECTDIR}/mcp9804_temp_sensor.o mcp9804_temp_sensor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/lp5009_led_driver.o: lp5009_led_driver.c  .generated_files/flags/default/e13c23bcdc9a997f41fb9d13fcf0a0fb44fe09da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lp5009_led_driver.o.d 
	@${RM} ${OBJECTDIR}/lp5009_led_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/lp5009_led_driver.o.d" -o ${OBJECTDIR}/lp5009_led_driver.o lp5009_led_driver.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/tca9555_io_expander.o: tca9555_io_expander.c  .generated_files/flags/default/5e56cfa8741da3c161fe64b6d9698281e588f83d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tca9555_io_expander.o.d 
	@${RM} ${OBJECTDIR}/tca9555_io_expander.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/tca9555_io_expander.o.d" -o ${OBJECTDIR}/tca9555_io_expander.o tca9555_io_expander.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/misc_i2c_devices.o: misc_i2c_devices.c  .generated_files/flags/default/e7f2aa837e4d37c939288d0a23ae830c5cf83371 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/misc_i2c_devices.o.d" -o ${OBJECTDIR}/misc_i2c_devices.o misc_i2c_devices.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/plib_i2c.o: plib_i2c.c  .generated_files/flags/default/cc0636c50acccba3c53aad03a105b27a53a369f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/plib_i2c.o.d 
	@${RM} ${OBJECTDIR}/plib_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/plib_i2c.o.d" -o ${OBJECTDIR}/plib_i2c.o plib_i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/power_monitors.o: power_monitors.c  .generated_files/flags/default/113bf32f048fc4701c735d8aef1af1ae43ac81a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_monitors.o.d 
	@${RM} ${OBJECTDIR}/power_monitors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/power_monitors.o.d" -o ${OBJECTDIR}/power_monitors.o power_monitors.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/temperature_sensors.o: temperature_sensors.c  .generated_files/flags/default/9040f3307216ba1bc50a9f148e9fdac2e77c22a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/temperature_sensors.o.d 
	@${RM} ${OBJECTDIR}/temperature_sensors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/temperature_sensors.o.d" -o ${OBJECTDIR}/temperature_sensors.o temperature_sensors.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/usb_uart.o: usb_uart.c  .generated_files/flags/default/bcafc44c483e4758ad7315e8ccc72050e57a02ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart.o.d 
	@${RM} ${OBJECTDIR}/usb_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart.o.d" -o ${OBJECTDIR}/usb_uart.o usb_uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/terminal_control.o: terminal_control.c  .generated_files/flags/default/e73bd45bd16dc081155b527a6d8be85804ed70b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/terminal_control.o.d 
	@${RM} ${OBJECTDIR}/terminal_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/terminal_control.o.d" -o ${OBJECTDIR}/terminal_control.o terminal_control.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/usb_uart_rx_lookup_table.o: usb_uart_rx_lookup_table.c  .generated_files/flags/default/d5d3238b4b7deef51b12edb5262695bda374fb99 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o.d 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart_rx_lookup_table.o.d" -o ${OBJECTDIR}/usb_uart_rx_lookup_table.o usb_uart_rx_lookup_table.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/12a15d39675f2e27d411c5a57f45ef4f0407d97b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types   
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=115200,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,--allow-multiple-definition 
	
else
${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=115200,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,--allow-multiple-definition 
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
