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
SOURCEFILES_QUOTED_IF_SPACED=heartbeat_services.c power_saving.c device_control.c 32mz_interrupt_control.c heartbeat_timer.c watchdog_timer.c error_handler.c prefetch.c cause_of_reset.c rtcc.c gpio_setup.c ds1683_ETC.c ds3231_rtc.c plib_i2c.c misc_i2c_devices.c terminal_control.c usb_uart_rx_lookup_table.c usb_uart.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/heartbeat_services.o ${OBJECTDIR}/power_saving.o ${OBJECTDIR}/device_control.o ${OBJECTDIR}/32mz_interrupt_control.o ${OBJECTDIR}/heartbeat_timer.o ${OBJECTDIR}/watchdog_timer.o ${OBJECTDIR}/error_handler.o ${OBJECTDIR}/prefetch.o ${OBJECTDIR}/cause_of_reset.o ${OBJECTDIR}/rtcc.o ${OBJECTDIR}/gpio_setup.o ${OBJECTDIR}/ds1683_ETC.o ${OBJECTDIR}/ds3231_rtc.o ${OBJECTDIR}/plib_i2c.o ${OBJECTDIR}/misc_i2c_devices.o ${OBJECTDIR}/terminal_control.o ${OBJECTDIR}/usb_uart_rx_lookup_table.o ${OBJECTDIR}/usb_uart.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/heartbeat_services.o.d ${OBJECTDIR}/power_saving.o.d ${OBJECTDIR}/device_control.o.d ${OBJECTDIR}/32mz_interrupt_control.o.d ${OBJECTDIR}/heartbeat_timer.o.d ${OBJECTDIR}/watchdog_timer.o.d ${OBJECTDIR}/error_handler.o.d ${OBJECTDIR}/prefetch.o.d ${OBJECTDIR}/cause_of_reset.o.d ${OBJECTDIR}/rtcc.o.d ${OBJECTDIR}/gpio_setup.o.d ${OBJECTDIR}/ds1683_ETC.o.d ${OBJECTDIR}/ds3231_rtc.o.d ${OBJECTDIR}/plib_i2c.o.d ${OBJECTDIR}/misc_i2c_devices.o.d ${OBJECTDIR}/terminal_control.o.d ${OBJECTDIR}/usb_uart_rx_lookup_table.o.d ${OBJECTDIR}/usb_uart.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/heartbeat_services.o ${OBJECTDIR}/power_saving.o ${OBJECTDIR}/device_control.o ${OBJECTDIR}/32mz_interrupt_control.o ${OBJECTDIR}/heartbeat_timer.o ${OBJECTDIR}/watchdog_timer.o ${OBJECTDIR}/error_handler.o ${OBJECTDIR}/prefetch.o ${OBJECTDIR}/cause_of_reset.o ${OBJECTDIR}/rtcc.o ${OBJECTDIR}/gpio_setup.o ${OBJECTDIR}/ds1683_ETC.o ${OBJECTDIR}/ds3231_rtc.o ${OBJECTDIR}/plib_i2c.o ${OBJECTDIR}/misc_i2c_devices.o ${OBJECTDIR}/terminal_control.o ${OBJECTDIR}/usb_uart_rx_lookup_table.o ${OBJECTDIR}/usb_uart.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=heartbeat_services.c power_saving.c device_control.c 32mz_interrupt_control.c heartbeat_timer.c watchdog_timer.c error_handler.c prefetch.c cause_of_reset.c rtcc.c gpio_setup.c ds1683_ETC.c ds3231_rtc.c plib_i2c.c misc_i2c_devices.c terminal_control.c usb_uart_rx_lookup_table.c usb_uart.c main.c



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
${OBJECTDIR}/heartbeat_services.o: heartbeat_services.c  .generated_files/flags/default/fce4a37417bceb6214b432d52539dfe5099ebbc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_services.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_services.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_services.o.d" -o ${OBJECTDIR}/heartbeat_services.o heartbeat_services.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/power_saving.o: power_saving.c  .generated_files/flags/default/81e9b7839a03d7b4f537aef0afd89b677ccc66b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_saving.o.d 
	@${RM} ${OBJECTDIR}/power_saving.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/power_saving.o.d" -o ${OBJECTDIR}/power_saving.o power_saving.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/device_control.o: device_control.c  .generated_files/flags/default/3d8f30801bc2f799d3fa27af312b94109eb24c34 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/device_control.o.d 
	@${RM} ${OBJECTDIR}/device_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/device_control.o.d" -o ${OBJECTDIR}/device_control.o device_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/32mz_interrupt_control.o: 32mz_interrupt_control.c  .generated_files/flags/default/e7c29a0f65d0a314cb8501cea171a0598d4cf973 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o.d 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/32mz_interrupt_control.o.d" -o ${OBJECTDIR}/32mz_interrupt_control.o 32mz_interrupt_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/heartbeat_timer.o: heartbeat_timer.c  .generated_files/flags/default/cc5559dddf7193864b360593fe49d4888cd2586 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_timer.o.d" -o ${OBJECTDIR}/heartbeat_timer.o heartbeat_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/watchdog_timer.o: watchdog_timer.c  .generated_files/flags/default/67492c7e86e23f01d60b4b2ad747fea5c18efedf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/watchdog_timer.o.d 
	@${RM} ${OBJECTDIR}/watchdog_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/watchdog_timer.o.d" -o ${OBJECTDIR}/watchdog_timer.o watchdog_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/error_handler.o: error_handler.c  .generated_files/flags/default/8b20a86beb20121b4f086227b4b0ebf048cdfd99 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/error_handler.o.d 
	@${RM} ${OBJECTDIR}/error_handler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/error_handler.o.d" -o ${OBJECTDIR}/error_handler.o error_handler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/prefetch.o: prefetch.c  .generated_files/flags/default/156314b34ee7ab608b78a3d314b00e01ccca4c68 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/prefetch.o.d 
	@${RM} ${OBJECTDIR}/prefetch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/prefetch.o.d" -o ${OBJECTDIR}/prefetch.o prefetch.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cause_of_reset.o: cause_of_reset.c  .generated_files/flags/default/d7b6abcc04b2e17503df79f50cca58b119148955 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cause_of_reset.o.d 
	@${RM} ${OBJECTDIR}/cause_of_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/cause_of_reset.o.d" -o ${OBJECTDIR}/cause_of_reset.o cause_of_reset.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/rtcc.o: rtcc.c  .generated_files/flags/default/fe16758c1d96e6affa2a8d2af565de2949d31ef9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rtcc.o.d 
	@${RM} ${OBJECTDIR}/rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/rtcc.o.d" -o ${OBJECTDIR}/rtcc.o rtcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/gpio_setup.o: gpio_setup.c  .generated_files/flags/default/e905a473f1cf6fc0f731d0bf75799344d94ef69c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/gpio_setup.o.d 
	@${RM} ${OBJECTDIR}/gpio_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/gpio_setup.o.d" -o ${OBJECTDIR}/gpio_setup.o gpio_setup.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ds1683_ETC.o: ds1683_ETC.c  .generated_files/flags/default/ac6dd6002c04909ae7002e984ae80ac5e220f46d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o.d 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/ds1683_ETC.o.d" -o ${OBJECTDIR}/ds1683_ETC.o ds1683_ETC.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ds3231_rtc.o: ds3231_rtc.c  .generated_files/flags/default/3d9b9006431bd0d104fa5c438da13c806333ab59 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o.d 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/ds3231_rtc.o.d" -o ${OBJECTDIR}/ds3231_rtc.o ds3231_rtc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/plib_i2c.o: plib_i2c.c  .generated_files/flags/default/b8cc27294bc796bb8d51a57a2f9d8242170ed45b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/plib_i2c.o.d 
	@${RM} ${OBJECTDIR}/plib_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/plib_i2c.o.d" -o ${OBJECTDIR}/plib_i2c.o plib_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/misc_i2c_devices.o: misc_i2c_devices.c  .generated_files/flags/default/2cb3c2dbc6277beb5771d76d790245477e88c0cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/misc_i2c_devices.o.d" -o ${OBJECTDIR}/misc_i2c_devices.o misc_i2c_devices.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/terminal_control.o: terminal_control.c  .generated_files/flags/default/90b0e86e0866cd0d3afff0920a07dfb448ce3719 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/terminal_control.o.d 
	@${RM} ${OBJECTDIR}/terminal_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/terminal_control.o.d" -o ${OBJECTDIR}/terminal_control.o terminal_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/usb_uart_rx_lookup_table.o: usb_uart_rx_lookup_table.c  .generated_files/flags/default/d2b73db9708c3ea1b43e650c6641fac17244abcf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o.d 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart_rx_lookup_table.o.d" -o ${OBJECTDIR}/usb_uart_rx_lookup_table.o usb_uart_rx_lookup_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/usb_uart.o: usb_uart.c  .generated_files/flags/default/fe9f017b5ce5475cb5304bf4bb096a55e3c27954 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart.o.d 
	@${RM} ${OBJECTDIR}/usb_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart.o.d" -o ${OBJECTDIR}/usb_uart.o usb_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/89dc5f37f5af32105b04b46fee51799d623e098d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/heartbeat_services.o: heartbeat_services.c  .generated_files/flags/default/361d704cf2cdee37212c0253f26a15892189f002 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_services.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_services.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_services.o.d" -o ${OBJECTDIR}/heartbeat_services.o heartbeat_services.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/power_saving.o: power_saving.c  .generated_files/flags/default/c4dafa5a278725fb61926b1a40f21cbaa7c7be52 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/power_saving.o.d 
	@${RM} ${OBJECTDIR}/power_saving.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/power_saving.o.d" -o ${OBJECTDIR}/power_saving.o power_saving.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/device_control.o: device_control.c  .generated_files/flags/default/9c1df021e97b9e1d341275debdb0740481eef789 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/device_control.o.d 
	@${RM} ${OBJECTDIR}/device_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/device_control.o.d" -o ${OBJECTDIR}/device_control.o device_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/32mz_interrupt_control.o: 32mz_interrupt_control.c  .generated_files/flags/default/1e78d65f26ee2079fbf0bcac656554faee7b837a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o.d 
	@${RM} ${OBJECTDIR}/32mz_interrupt_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/32mz_interrupt_control.o.d" -o ${OBJECTDIR}/32mz_interrupt_control.o 32mz_interrupt_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/heartbeat_timer.o: heartbeat_timer.c  .generated_files/flags/default/ac61b7a4c1d540db600e6a014e7e47e496e1c57b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o.d 
	@${RM} ${OBJECTDIR}/heartbeat_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/heartbeat_timer.o.d" -o ${OBJECTDIR}/heartbeat_timer.o heartbeat_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/watchdog_timer.o: watchdog_timer.c  .generated_files/flags/default/2d716dd94a817b4753d7d721b312b1a3abbe3478 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/watchdog_timer.o.d 
	@${RM} ${OBJECTDIR}/watchdog_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/watchdog_timer.o.d" -o ${OBJECTDIR}/watchdog_timer.o watchdog_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/error_handler.o: error_handler.c  .generated_files/flags/default/7b6182121fc8e956144e9ab8d4652bb51b4f6211 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/error_handler.o.d 
	@${RM} ${OBJECTDIR}/error_handler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/error_handler.o.d" -o ${OBJECTDIR}/error_handler.o error_handler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/prefetch.o: prefetch.c  .generated_files/flags/default/ae8a2f9572bdaa791c86e935051e5eb3928d271b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/prefetch.o.d 
	@${RM} ${OBJECTDIR}/prefetch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/prefetch.o.d" -o ${OBJECTDIR}/prefetch.o prefetch.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cause_of_reset.o: cause_of_reset.c  .generated_files/flags/default/9ff6b8cb1b7f8f9a6f194e2e97b8b39f480db4ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cause_of_reset.o.d 
	@${RM} ${OBJECTDIR}/cause_of_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/cause_of_reset.o.d" -o ${OBJECTDIR}/cause_of_reset.o cause_of_reset.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/rtcc.o: rtcc.c  .generated_files/flags/default/299bbfebdcb1abb5f3ee378e5bd2b977f546558d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rtcc.o.d 
	@${RM} ${OBJECTDIR}/rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/rtcc.o.d" -o ${OBJECTDIR}/rtcc.o rtcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/gpio_setup.o: gpio_setup.c  .generated_files/flags/default/6b13f0571d4b7cccdb3b0177147547752e30b1e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/gpio_setup.o.d 
	@${RM} ${OBJECTDIR}/gpio_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/gpio_setup.o.d" -o ${OBJECTDIR}/gpio_setup.o gpio_setup.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ds1683_ETC.o: ds1683_ETC.c  .generated_files/flags/default/11b173c705ca856ae5a2ba7bd7b50fff37e07610 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o.d 
	@${RM} ${OBJECTDIR}/ds1683_ETC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/ds1683_ETC.o.d" -o ${OBJECTDIR}/ds1683_ETC.o ds1683_ETC.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ds3231_rtc.o: ds3231_rtc.c  .generated_files/flags/default/a7b2c3d063fba627c1b67fb01adc94fd93b51ee1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o.d 
	@${RM} ${OBJECTDIR}/ds3231_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/ds3231_rtc.o.d" -o ${OBJECTDIR}/ds3231_rtc.o ds3231_rtc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/plib_i2c.o: plib_i2c.c  .generated_files/flags/default/8ed1d5fe22116ca43e3f3b9cd28c02577cbb48ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/plib_i2c.o.d 
	@${RM} ${OBJECTDIR}/plib_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/plib_i2c.o.d" -o ${OBJECTDIR}/plib_i2c.o plib_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/misc_i2c_devices.o: misc_i2c_devices.c  .generated_files/flags/default/8c466bd5b9c736fc4a5503fe141410667591de1d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/misc_i2c_devices.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/misc_i2c_devices.o.d" -o ${OBJECTDIR}/misc_i2c_devices.o misc_i2c_devices.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/terminal_control.o: terminal_control.c  .generated_files/flags/default/6f04a00ee8cd439a679f75cbdf002e8e53a49953 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/terminal_control.o.d 
	@${RM} ${OBJECTDIR}/terminal_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/terminal_control.o.d" -o ${OBJECTDIR}/terminal_control.o terminal_control.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/usb_uart_rx_lookup_table.o: usb_uart_rx_lookup_table.c  .generated_files/flags/default/39647d647b981b274b106238096196a1a50ec23a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o.d 
	@${RM} ${OBJECTDIR}/usb_uart_rx_lookup_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart_rx_lookup_table.o.d" -o ${OBJECTDIR}/usb_uart_rx_lookup_table.o usb_uart_rx_lookup_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/usb_uart.o: usb_uart.c  .generated_files/flags/default/4b4a66dcc162d01d551bd2c3afc261d82e25817e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_uart.o.d 
	@${RM} ${OBJECTDIR}/usb_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/usb_uart.o.d" -o ${OBJECTDIR}/usb_uart.o usb_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/2ea29caa9de1367fc3faf0f559f5aa710dc5ec6b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=115200,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,--allow-multiple-definition -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Nixie_Clock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=115200,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,--allow-multiple-definition -mdfp="${DFP_DIR}"
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
