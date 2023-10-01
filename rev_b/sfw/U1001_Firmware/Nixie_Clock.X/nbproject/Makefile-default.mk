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
SOURCEFILES_QUOTED_IF_SPACED=adc.c adc_channels.c in12_i2c.c heartbeat_services.c power_saving.c telemetry.c pgood_monitor.c device_control.c cause_of_reset.c 32mz_interrupt_control.c error_handler.c heartbeat_timer.c prefetch.c watchdog_timer.c rtcc.c gpio_setup.c ds1683_ETC.c ds3231_rtc.c ina219_power_monitor.c mcp9804_temp_sensor.c lp5009_led_driver.c tca9555_io_expander.c misc_i2c_devices.c plib_i2c.c power_monitors.c temperature_sensors.c usb_uart.c terminal_control.c usb_uart_rx_lookup_table.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/adc.o ${OBJECTDIR}/adc_channels.o ${OBJECTDIR}/in12_i2c.o ${OBJECTDIR}/heartbeat_services.o ${OBJECTDIR}/power_saving.o ${OBJECTDIR}/telemetry.o ${OBJECTDIR}/pgood_monitor.o ${OBJECTDIR}/device_control.o ${OBJECTDIR}/cause_of_reset.o ${OBJECTDIR}/32mz_interrupt_control.o ${OBJECTDIR}/error_handler.o ${OBJECTDIR}/heartbeat_timer.o ${OBJECTDIR}/prefetch.o ${OBJECTDIR}/watchdog_timer.o ${OBJECTDIR}/rtcc.o ${OBJECTDIR}/gpio_setup.o ${OBJECTDIR}/ds1683_ETC.o ${OBJECTDIR}/ds3231_rtc.o ${OBJECTDIR}/ina219_power_monitor.o ${OBJECTDIR}/mcp9804_temp_sensor.o ${OBJECTDIR}/lp5009_led_driver.o ${OBJECTDIR}/tca9555_io_expander.o ${OBJECTDIR}/misc_i2c_devices.o ${OBJECTDIR}/plib_i2c.o ${OBJECTDIR}/power_monitors.o ${OBJECTDIR}/temperature_sensors.o ${OBJECTDIR}/usb_uart.o ${OBJECTDIR}/terminal_control.o ${OBJECTDIR}/usb_uart_rx_lookup_table.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/adc.o.d ${OBJECTDIR}/adc_channels.o.d ${OBJECTDIR}/in12_i2c.o.d ${OBJECTDIR}/heartbeat_services.o.d ${OBJECTDIR}/power_saving.o.d ${OBJECTDIR}/telemetry.o.d ${OBJECTDIR}/pgood_monitor.o.d ${OBJECTDIR}/device_control.o.d ${OBJECTDIR}/cause_of_reset.o.d ${OBJECTDIR}/32mz_interrupt_control.o.d ${OBJECTDIR}/error_handler.o.d ${OBJECTDIR}/heartbeat_timer.o.d ${OBJECTDIR}/prefetch.o.d ${OBJECTDIR}/watchdog_timer.o.d ${OBJECTDIR}/rtcc.o.d ${OBJECTDIR}/gpio_setup.o.d ${OBJECTDIR}/ds1683_ETC.o.d ${OBJECTDIR}/ds3231_rtc.o.d ${OBJECTDIR}/ina219_power_monitor.o.d ${OBJECTDIR}/mcp9804_temp_sensor.o.d ${OBJECTDIR}/lp5009_led_driver.o.d ${OBJECTDIR}/tca9555_io_expander.o.d ${OBJECTDIR}/misc_i2c_devices.o.d ${OBJECTDIR}/plib_i2c.o.d ${OBJECTDIR}/power_monitors.o.d ${OBJECTDIR}/temperature_sensors.o.d ${OBJECTDIR}/usb_uart.o.d ${OBJECTDIR}/terminal_control.o.d ${OBJECTDIR}/usb_uart_rx_lookup_table.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/adc.o ${OBJECTDIR}/adc_channels.o ${OBJECTDIR}/in12_i2c.o ${OBJECTDIR}/heartbeat_services.o ${OBJECTDIR}/power_saving.o ${OBJECTDIR}/telemetry.o ${OBJECTDIR}/pgood_monitor.o ${OBJECTDIR}/device_control.o ${OBJECTDIR}/cause_of_reset.o ${OBJECTDIR}/32mz_interrupt_control.o ${OBJECTDIR}/error_handler.o ${OBJECTDIR}/heartbeat_timer.o ${OBJECTDIR}/prefetch.o ${OBJECTDIR}/watchdog_timer.o ${OBJECTDIR}/rtcc.o ${OBJECTDIR}/gpio_setup.o ${OBJECTDIR}/ds1683_ETC.o ${OBJECTDIR}/ds3231_rtc.o ${OBJECTDIR}/ina219_power_monitor.o ${OBJECTDIR}/mcp9804_temp_sensor.o ${OBJECTDIR}/lp5009_led_driver.o ${OBJECTDIR}/tca9555_io_expander.o ${OBJECTDIR}/misc_i2c_devices.o ${OBJECTDIR}/plib_i2c.o ${OBJECTDIR}/power_monitors.o ${OBJECTDIR}/temperature_sensors.o ${OBJECTDIR}/usb_uart.o ${OBJECTDIR}/terminal_control.o ${OBJECTDIR}/usb_uart_rx_lookup_table.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=adc.c adc_channels.c in12_i2c.c heartbeat_services.c power_saving.c telemetry.c pgood_monitor.c device_control.c cause_of_reset.c 32mz_interrupt_control.c error_handler.c heartbeat_timer.c prefetch.c watchdog_timer.c rtcc.c gpio_setup.c ds1683_ETC.c ds3231_rtc.c ina219_power_monitor.c mcp9804_temp_sensor.c lp5009_led_driver.c tca9555_io_expander.c misc_i2c_devices.c plib_i2c.c power_monitors.c temperature_sensors.c usb_uart.c terminal_control.c usb_uart_rx_lookup_table.c main.c



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
${OBJECTDIR}/adc.o: adc.c  .generated_files/flags/default/24aba8cb593eeae3ae2ee9b7e1e3c3f4ddc9313c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.o.d 
	@${RM} ${OBJECTDIR}/adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/adc.o.d" -o ${OBJECTDIR}/adc.o adc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/adc_channels.o: adc_channels.c  .generated_files/flags/default/e1a1e17fd3940aa40c1ded41e0258a2f5fe226dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc_channels.o.d 
	@${RM} ${OBJECTDIR}/adc_channels.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/adc_channels.o.d" -o ${OBJECTDIR}/adc_channels.o adc_channels.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/in12_i2c.o: in12_i2c.c  .generated_files/flags/default/79a9f3b9a26e32a14fa46450687fc8f81f2ccf7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/in12_i2c.o.d 
	@${RM} ${OBJECTDIR}/in12_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/in12_i2c.o.d" -o ${OBJECTDIR}/in12_i2c.o in12_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/heartbeat_services.o: heartbeat_services.c  .generated_files/flags/default/d6ccf72937f67aace0b30313f036f89cbb73381 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_services.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_services.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_services.o.d" -o ${OBJECTDIR}/heartbeat_services.o heartbeat_services.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/power_saving.o: power_saving.c  .generated_files/flags/default/28a5785df43d2d004c1f5e6c7c3d8f1b71aa4bbc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_saving.o.d 
	@${RM} ${OBJECTDIR}/power_saving.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/power_saving.o.d" -o ${OBJECTDIR}/power_saving.o power_saving.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/telemetry.o: telemetry.c  .generated_files/flags/default/635aaff8643a358b842160d55f4c67335ec4888f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/telemetry.o.d 
	@${RM} ${OBJECTDIR}/telemetry.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/telemetry.o.d" -o ${OBJECTDIR}/telemetry.o telemetry.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/pgood_monitor.o: pgood_monitor.c  .generated_files/flags/default/34892874dba08890d7893b5de7866a96e01833c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pgood_monitor.o.d 
	@${RM} ${OBJECTDIR}/pgood_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/pgood_monitor.o.d" -o ${OBJECTDIR}/pgood_monitor.o pgood_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/device_control.o: device_control.c  .generated_files/flags/default/36fb5a36202f9155b64f4e1879176709bfbfd68c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/device_control.o.d 
	@${RM} ${OBJECTDIR}/device_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/device_control.o.d" -o ${OBJECTDIR}/device_control.o device_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cause_of_reset.o: cause_of_reset.c  .generated_files/flags/default/4f0cbf6e7cc4924a7324eb2c99254b117947af6d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cause_of_reset.o.d 
	@${RM} ${OBJECTDIR}/cause_of_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/cause_of_reset.o.d" -o ${OBJECTDIR}/cause_of_reset.o cause_of_reset.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/32mz_interrupt_control.o: 32mz_interrupt_control.c  .generated_files/flags/default/d95827dd61e45302e3da12d0c305a2625aef5fa2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o.d 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/32mz_interrupt_control.o.d" -o ${OBJECTDIR}/32mz_interrupt_control.o 32mz_interrupt_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/error_handler.o: error_handler.c  .generated_files/flags/default/b0f4da1f206ddc6aa812449a74ba82c1275e62ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/error_handler.o.d 
	@${RM} ${OBJECTDIR}/error_handler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/error_handler.o.d" -o ${OBJECTDIR}/error_handler.o error_handler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/heartbeat_timer.o: heartbeat_timer.c  .generated_files/flags/default/1506c2589441bf5467341e8e3f49ea7fbd816786 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_timer.o.d" -o ${OBJECTDIR}/heartbeat_timer.o heartbeat_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/prefetch.o: prefetch.c  .generated_files/flags/default/5158be00c2e032ad9599a5b98f4d8a90905266cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/prefetch.o.d 
	@${RM} ${OBJECTDIR}/prefetch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/prefetch.o.d" -o ${OBJECTDIR}/prefetch.o prefetch.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/watchdog_timer.o: watchdog_timer.c  .generated_files/flags/default/728094c4fabf87545d52c93731d88d81b8213aaf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/watchdog_timer.o.d 
	@${RM} ${OBJECTDIR}/watchdog_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/watchdog_timer.o.d" -o ${OBJECTDIR}/watchdog_timer.o watchdog_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/rtcc.o: rtcc.c  .generated_files/flags/default/44c6c35da60d57b0f07d1e38370378b39517a65 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rtcc.o.d 
	@${RM} ${OBJECTDIR}/rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/rtcc.o.d" -o ${OBJECTDIR}/rtcc.o rtcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/gpio_setup.o: gpio_setup.c  .generated_files/flags/default/6377970d56d80c991547b6df1f5b8f50354f7b41 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/gpio_setup.o.d 
	@${RM} ${OBJECTDIR}/gpio_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/gpio_setup.o.d" -o ${OBJECTDIR}/gpio_setup.o gpio_setup.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ds1683_ETC.o: ds1683_ETC.c  .generated_files/flags/default/b22202bcec11b1dad896c32dc0514326843b81e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o.d 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ds1683_ETC.o.d" -o ${OBJECTDIR}/ds1683_ETC.o ds1683_ETC.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ds3231_rtc.o: ds3231_rtc.c  .generated_files/flags/default/e3fe0e124a0fc8aac9129309c6b30440e91bd685 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o.d 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ds3231_rtc.o.d" -o ${OBJECTDIR}/ds3231_rtc.o ds3231_rtc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ina219_power_monitor.o: ina219_power_monitor.c  .generated_files/flags/default/1294b40e89778236a2fa02542068da2190f972b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ina219_power_monitor.o.d 
	@${RM} ${OBJECTDIR}/ina219_power_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ina219_power_monitor.o.d" -o ${OBJECTDIR}/ina219_power_monitor.o ina219_power_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcp9804_temp_sensor.o: mcp9804_temp_sensor.c  .generated_files/flags/default/a03d1a21fded443966795f9f989b516fc876e84f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcp9804_temp_sensor.o.d 
	@${RM} ${OBJECTDIR}/mcp9804_temp_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/mcp9804_temp_sensor.o.d" -o ${OBJECTDIR}/mcp9804_temp_sensor.o mcp9804_temp_sensor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/lp5009_led_driver.o: lp5009_led_driver.c  .generated_files/flags/default/76b61afa33408fddd3ecb8cb26cfbd70eed39559 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lp5009_led_driver.o.d 
	@${RM} ${OBJECTDIR}/lp5009_led_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/lp5009_led_driver.o.d" -o ${OBJECTDIR}/lp5009_led_driver.o lp5009_led_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/tca9555_io_expander.o: tca9555_io_expander.c  .generated_files/flags/default/2bfba5c85a371fd75998d6f8b14c207e872e0bed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tca9555_io_expander.o.d 
	@${RM} ${OBJECTDIR}/tca9555_io_expander.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/tca9555_io_expander.o.d" -o ${OBJECTDIR}/tca9555_io_expander.o tca9555_io_expander.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/misc_i2c_devices.o: misc_i2c_devices.c  .generated_files/flags/default/eb4f7a93823af42034382f5c07adabb1f1da4cc8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/misc_i2c_devices.o.d" -o ${OBJECTDIR}/misc_i2c_devices.o misc_i2c_devices.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/plib_i2c.o: plib_i2c.c  .generated_files/flags/default/fa345160d446f18c2559a74d3cf85678977fe64 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/plib_i2c.o.d 
	@${RM} ${OBJECTDIR}/plib_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/plib_i2c.o.d" -o ${OBJECTDIR}/plib_i2c.o plib_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/power_monitors.o: power_monitors.c  .generated_files/flags/default/160b93585b06bada479482acb6720e9162292361 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_monitors.o.d 
	@${RM} ${OBJECTDIR}/power_monitors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/power_monitors.o.d" -o ${OBJECTDIR}/power_monitors.o power_monitors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/temperature_sensors.o: temperature_sensors.c  .generated_files/flags/default/ec0700cc8ca4ed3886c092a30212099ec0bff936 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/temperature_sensors.o.d 
	@${RM} ${OBJECTDIR}/temperature_sensors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/temperature_sensors.o.d" -o ${OBJECTDIR}/temperature_sensors.o temperature_sensors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/usb_uart.o: usb_uart.c  .generated_files/flags/default/1428b0df1551485420c329b6e6a3312a959fbd61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart.o.d 
	@${RM} ${OBJECTDIR}/usb_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart.o.d" -o ${OBJECTDIR}/usb_uart.o usb_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/terminal_control.o: terminal_control.c  .generated_files/flags/default/95f55c7209cefc1da90cad378d3d10ecc09c4686 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/terminal_control.o.d 
	@${RM} ${OBJECTDIR}/terminal_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/terminal_control.o.d" -o ${OBJECTDIR}/terminal_control.o terminal_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/usb_uart_rx_lookup_table.o: usb_uart_rx_lookup_table.c  .generated_files/flags/default/8bd10cfab8763e8b5e3b32fd15b380f701be413b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o.d 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart_rx_lookup_table.o.d" -o ${OBJECTDIR}/usb_uart_rx_lookup_table.o usb_uart_rx_lookup_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/1f5d64e92bb07ce5fd3bde927e4441807cd0da84 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/adc.o: adc.c  .generated_files/flags/default/d5e27906c7d41a350ef387dfaa1eb11d94faae73 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.o.d 
	@${RM} ${OBJECTDIR}/adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/adc.o.d" -o ${OBJECTDIR}/adc.o adc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/adc_channels.o: adc_channels.c  .generated_files/flags/default/169a43142f187c8ce45058d79b60ca233652922c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc_channels.o.d 
	@${RM} ${OBJECTDIR}/adc_channels.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/adc_channels.o.d" -o ${OBJECTDIR}/adc_channels.o adc_channels.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/in12_i2c.o: in12_i2c.c  .generated_files/flags/default/8ad429afe902361d204b0facd58648cd9824e508 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/in12_i2c.o.d 
	@${RM} ${OBJECTDIR}/in12_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/in12_i2c.o.d" -o ${OBJECTDIR}/in12_i2c.o in12_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/heartbeat_services.o: heartbeat_services.c  .generated_files/flags/default/49b6ac161922d6ab90ba29bf87a6ef223af1f3d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_services.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_services.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_services.o.d" -o ${OBJECTDIR}/heartbeat_services.o heartbeat_services.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/power_saving.o: power_saving.c  .generated_files/flags/default/6aa089f23c5055606717d324bbe9eaba18f9f21f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_saving.o.d 
	@${RM} ${OBJECTDIR}/power_saving.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/power_saving.o.d" -o ${OBJECTDIR}/power_saving.o power_saving.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/telemetry.o: telemetry.c  .generated_files/flags/default/56eca68e0de85537c3e136b70967d5ebd4c0c20c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/telemetry.o.d 
	@${RM} ${OBJECTDIR}/telemetry.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/telemetry.o.d" -o ${OBJECTDIR}/telemetry.o telemetry.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/pgood_monitor.o: pgood_monitor.c  .generated_files/flags/default/ced31aae7b038818f5032ceba019b06a1c9b3610 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pgood_monitor.o.d 
	@${RM} ${OBJECTDIR}/pgood_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/pgood_monitor.o.d" -o ${OBJECTDIR}/pgood_monitor.o pgood_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/device_control.o: device_control.c  .generated_files/flags/default/5c6c8481f63eb4b914cd667d604be983c5402deb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/device_control.o.d 
	@${RM} ${OBJECTDIR}/device_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/device_control.o.d" -o ${OBJECTDIR}/device_control.o device_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cause_of_reset.o: cause_of_reset.c  .generated_files/flags/default/f2b90c5bd76400c38f43ff6f9996a0d20ba4846e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cause_of_reset.o.d 
	@${RM} ${OBJECTDIR}/cause_of_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/cause_of_reset.o.d" -o ${OBJECTDIR}/cause_of_reset.o cause_of_reset.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/32mz_interrupt_control.o: 32mz_interrupt_control.c  .generated_files/flags/default/8d613d770f6be04675078334981e4de39d419a5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o.d 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/32mz_interrupt_control.o.d" -o ${OBJECTDIR}/32mz_interrupt_control.o 32mz_interrupt_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/error_handler.o: error_handler.c  .generated_files/flags/default/26b60f55cb86115d9e8b2b37cb0523f11e2d930 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/error_handler.o.d 
	@${RM} ${OBJECTDIR}/error_handler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/error_handler.o.d" -o ${OBJECTDIR}/error_handler.o error_handler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/heartbeat_timer.o: heartbeat_timer.c  .generated_files/flags/default/bb4755e129a9020ab8fbfcb6a44fa084504e0c28 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_timer.o.d" -o ${OBJECTDIR}/heartbeat_timer.o heartbeat_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/prefetch.o: prefetch.c  .generated_files/flags/default/1dcb0a0284fe554622530a4921c529a6b02cff52 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/prefetch.o.d 
	@${RM} ${OBJECTDIR}/prefetch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/prefetch.o.d" -o ${OBJECTDIR}/prefetch.o prefetch.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/watchdog_timer.o: watchdog_timer.c  .generated_files/flags/default/273bbc527d63bd68c95cfceca6cc70d8b9d600bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/watchdog_timer.o.d 
	@${RM} ${OBJECTDIR}/watchdog_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/watchdog_timer.o.d" -o ${OBJECTDIR}/watchdog_timer.o watchdog_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/rtcc.o: rtcc.c  .generated_files/flags/default/6afd93da0521999762148200ec30eb23bc4d255f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rtcc.o.d 
	@${RM} ${OBJECTDIR}/rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/rtcc.o.d" -o ${OBJECTDIR}/rtcc.o rtcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/gpio_setup.o: gpio_setup.c  .generated_files/flags/default/5ccddcd9ba99ff298dc39983fd810a0df0ce34c0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/gpio_setup.o.d 
	@${RM} ${OBJECTDIR}/gpio_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/gpio_setup.o.d" -o ${OBJECTDIR}/gpio_setup.o gpio_setup.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ds1683_ETC.o: ds1683_ETC.c  .generated_files/flags/default/bb7f73ac788d7ff3825b8ada2911f8d8187f68ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o.d 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ds1683_ETC.o.d" -o ${OBJECTDIR}/ds1683_ETC.o ds1683_ETC.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ds3231_rtc.o: ds3231_rtc.c  .generated_files/flags/default/b70cd08291db5495820a25ea1f3636b4b7b2d2b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o.d 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ds3231_rtc.o.d" -o ${OBJECTDIR}/ds3231_rtc.o ds3231_rtc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ina219_power_monitor.o: ina219_power_monitor.c  .generated_files/flags/default/697b1d032cc13e6b2a2ff723b95a7ad0eb3b25f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ina219_power_monitor.o.d 
	@${RM} ${OBJECTDIR}/ina219_power_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/ina219_power_monitor.o.d" -o ${OBJECTDIR}/ina219_power_monitor.o ina219_power_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcp9804_temp_sensor.o: mcp9804_temp_sensor.c  .generated_files/flags/default/88ae371c03d8ec65dbfa2dec4e2c14ba3b24ef7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcp9804_temp_sensor.o.d 
	@${RM} ${OBJECTDIR}/mcp9804_temp_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/mcp9804_temp_sensor.o.d" -o ${OBJECTDIR}/mcp9804_temp_sensor.o mcp9804_temp_sensor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/lp5009_led_driver.o: lp5009_led_driver.c  .generated_files/flags/default/6ad3fdac1342d6c2b22db5f1d5a730a98e2e986e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lp5009_led_driver.o.d 
	@${RM} ${OBJECTDIR}/lp5009_led_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/lp5009_led_driver.o.d" -o ${OBJECTDIR}/lp5009_led_driver.o lp5009_led_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/tca9555_io_expander.o: tca9555_io_expander.c  .generated_files/flags/default/6fb8d14e4d6a29a27bb767fe4d584587477ba500 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tca9555_io_expander.o.d 
	@${RM} ${OBJECTDIR}/tca9555_io_expander.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/tca9555_io_expander.o.d" -o ${OBJECTDIR}/tca9555_io_expander.o tca9555_io_expander.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/misc_i2c_devices.o: misc_i2c_devices.c  .generated_files/flags/default/be7830671fa0486977fd8c17096c761df9f6cc0c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/misc_i2c_devices.o.d" -o ${OBJECTDIR}/misc_i2c_devices.o misc_i2c_devices.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/plib_i2c.o: plib_i2c.c  .generated_files/flags/default/3cd47e0e1d61c9a92e27551a7b3e609a23de1b2b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/plib_i2c.o.d 
	@${RM} ${OBJECTDIR}/plib_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/plib_i2c.o.d" -o ${OBJECTDIR}/plib_i2c.o plib_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/power_monitors.o: power_monitors.c  .generated_files/flags/default/181cf01f454cacf93d0c852420a1c97bb41a6c96 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_monitors.o.d 
	@${RM} ${OBJECTDIR}/power_monitors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/power_monitors.o.d" -o ${OBJECTDIR}/power_monitors.o power_monitors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/temperature_sensors.o: temperature_sensors.c  .generated_files/flags/default/b4651a99ade4f887cb6783bb194bc2ed7f2e43fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/temperature_sensors.o.d 
	@${RM} ${OBJECTDIR}/temperature_sensors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/temperature_sensors.o.d" -o ${OBJECTDIR}/temperature_sensors.o temperature_sensors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/usb_uart.o: usb_uart.c  .generated_files/flags/default/d6d0bfa139d39a46f9bbcea44e98dcaae58d79cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart.o.d 
	@${RM} ${OBJECTDIR}/usb_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart.o.d" -o ${OBJECTDIR}/usb_uart.o usb_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/terminal_control.o: terminal_control.c  .generated_files/flags/default/51f6d8bee5374f3112274934b657c1cc961d5882 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/terminal_control.o.d 
	@${RM} ${OBJECTDIR}/terminal_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/terminal_control.o.d" -o ${OBJECTDIR}/terminal_control.o terminal_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/usb_uart_rx_lookup_table.o: usb_uart_rx_lookup_table.c  .generated_files/flags/default/80b93611ebfb213ef3069be8c7c3c75fb7a2dbea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o.d 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart_rx_lookup_table.o.d" -o ${OBJECTDIR}/usb_uart_rx_lookup_table.o usb_uart_rx_lookup_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/292aa2d83e19e5879314fc3258d52611179d2c4c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wno-implicit-function-declaration -Wno-incompatible-pointer-types -mdfp="${DFP_DIR}"  
	
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
