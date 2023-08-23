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
ifeq "$(wildcard nbproject/Makefile-local-sam_a7g5_ek_IMX219.mk)" "nbproject/Makefile-local-sam_a7g5_ek_IMX219.mk"
include nbproject/Makefile-local-sam_a7g5_ek_IMX219.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_a7g5_ek_IMX219
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/csi_sam_a7g5_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/csi_sam_a7g5_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_a7g5_ek_IMX219/bsp/bsp.c ../src/config/sam_a7g5_ek_IMX219/driver/cam/drv_imx219.c ../src/config/sam_a7g5_ek_IMX219/driver/cam/drv_cam.c ../src/config/sam_a7g5_ek_IMX219/driver/i2c/src/drv_i2c.c ../src/config/sam_a7g5_ek_IMX219/driver/isc/drv_isc.c ../src/config/sam_a7g5_ek_IMX219/driver/usb/uhp/src/drv_usb_ohci.c ../src/config/sam_a7g5_ek_IMX219/driver/usb/uhp/src/drv_usb_ehci.c ../src/config/sam_a7g5_ek_IMX219/peripheral/clk/plib_clk.c ../src/config/sam_a7g5_ek_IMX219/peripheral/dwdt/plib_dwdt.c ../src/config/sam_a7g5_ek_IMX219/peripheral/flexcom/twi/master/plib_flexcom8_twi_master.c ../src/config/sam_a7g5_ek_IMX219/peripheral/gic/plib_gic.c ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_csi2dc.c ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_isc.c ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_mipi_csi.c ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_mipi_csi_dphy.c ../src/config/sam_a7g5_ek_IMX219/peripheral/matrix/plib_matrix.c ../src/config/sam_a7g5_ek_IMX219/peripheral/mmu/plib_mmu.c ../src/config/sam_a7g5_ek_IMX219/peripheral/pio/plib_pio.c ../src/config/sam_a7g5_ek_IMX219/peripheral/tc/plib_tc0.c ../src/config/sam_a7g5_ek_IMX219/stdio/xc32_monitor.c ../src/config/sam_a7g5_ek_IMX219/system/cache/sys_cache.c ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system/ffunicode.c ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system/ff.c ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access/diskio.c ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs_media_manager.c ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs_fat_interface.c ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs.c ../src/config/sam_a7g5_ek_IMX219/system/int/src/sys_int.c ../src/config/sam_a7g5_ek_IMX219/system/time/src/sys_time.c ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host_msd.c ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host_scsi.c ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host.c ../src/config/sam_a7g5_ek_IMX219/initialization.c ../src/config/sam_a7g5_ek_IMX219/fault_handlers.c ../src/config/sam_a7g5_ek_IMX219/tasks.c ../src/config/sam_a7g5_ek_IMX219/usb_host_init_data.c ../src/config/sam_a7g5_ek_IMX219/interrupts.c ../src/config/sam_a7g5_ek_IMX219/cstartup.S ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1336515591/bsp.o ${OBJECTDIR}/_ext/280195744/drv_imx219.o ${OBJECTDIR}/_ext/280195744/drv_cam.o ${OBJECTDIR}/_ext/1154158272/drv_i2c.o ${OBJECTDIR}/_ext/280202058/drv_isc.o ${OBJECTDIR}/_ext/259934552/drv_usb_ohci.o ${OBJECTDIR}/_ext/259934552/drv_usb_ehci.o ${OBJECTDIR}/_ext/1252377785/plib_clk.o ${OBJECTDIR}/_ext/168965410/plib_dwdt.o ${OBJECTDIR}/_ext/177898253/plib_flexcom8_twi_master.o ${OBJECTDIR}/_ext/1252374042/plib_gic.o ${OBJECTDIR}/_ext/1252371810/plib_csi2dc.o ${OBJECTDIR}/_ext/1252371810/plib_isc.o ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi.o ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi_dphy.o ${OBJECTDIR}/_ext/1070821244/plib_matrix.o ${OBJECTDIR}/_ext/1252368134/plib_mmu.o ${OBJECTDIR}/_ext/1252365381/plib_pio.o ${OBJECTDIR}/_ext/1287324758/plib_tc0.o ${OBJECTDIR}/_ext/211982929/xc32_monitor.o ${OBJECTDIR}/_ext/1860097318/sys_cache.o ${OBJECTDIR}/_ext/819346896/ffunicode.o ${OBJECTDIR}/_ext/819346896/ff.o ${OBJECTDIR}/_ext/521048089/diskio.o ${OBJECTDIR}/_ext/1727469238/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1727469238/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/1727469238/sys_fs.o ${OBJECTDIR}/_ext/569125148/sys_int.o ${OBJECTDIR}/_ext/2136021686/sys_time.o ${OBJECTDIR}/_ext/700024671/usb_host_msd.o ${OBJECTDIR}/_ext/700024671/usb_host_scsi.o ${OBJECTDIR}/_ext/700024671/usb_host.o ${OBJECTDIR}/_ext/1488356311/initialization.o ${OBJECTDIR}/_ext/1488356311/fault_handlers.o ${OBJECTDIR}/_ext/1488356311/tasks.o ${OBJECTDIR}/_ext/1488356311/usb_host_init_data.o ${OBJECTDIR}/_ext/1488356311/interrupts.o ${OBJECTDIR}/_ext/1488356311/cstartup.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1336515591/bsp.o.d ${OBJECTDIR}/_ext/280195744/drv_imx219.o.d ${OBJECTDIR}/_ext/280195744/drv_cam.o.d ${OBJECTDIR}/_ext/1154158272/drv_i2c.o.d ${OBJECTDIR}/_ext/280202058/drv_isc.o.d ${OBJECTDIR}/_ext/259934552/drv_usb_ohci.o.d ${OBJECTDIR}/_ext/259934552/drv_usb_ehci.o.d ${OBJECTDIR}/_ext/1252377785/plib_clk.o.d ${OBJECTDIR}/_ext/168965410/plib_dwdt.o.d ${OBJECTDIR}/_ext/177898253/plib_flexcom8_twi_master.o.d ${OBJECTDIR}/_ext/1252374042/plib_gic.o.d ${OBJECTDIR}/_ext/1252371810/plib_csi2dc.o.d ${OBJECTDIR}/_ext/1252371810/plib_isc.o.d ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi.o.d ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi_dphy.o.d ${OBJECTDIR}/_ext/1070821244/plib_matrix.o.d ${OBJECTDIR}/_ext/1252368134/plib_mmu.o.d ${OBJECTDIR}/_ext/1252365381/plib_pio.o.d ${OBJECTDIR}/_ext/1287324758/plib_tc0.o.d ${OBJECTDIR}/_ext/211982929/xc32_monitor.o.d ${OBJECTDIR}/_ext/1860097318/sys_cache.o.d ${OBJECTDIR}/_ext/819346896/ffunicode.o.d ${OBJECTDIR}/_ext/819346896/ff.o.d ${OBJECTDIR}/_ext/521048089/diskio.o.d ${OBJECTDIR}/_ext/1727469238/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/1727469238/sys_fs_fat_interface.o.d ${OBJECTDIR}/_ext/1727469238/sys_fs.o.d ${OBJECTDIR}/_ext/569125148/sys_int.o.d ${OBJECTDIR}/_ext/2136021686/sys_time.o.d ${OBJECTDIR}/_ext/700024671/usb_host_msd.o.d ${OBJECTDIR}/_ext/700024671/usb_host_scsi.o.d ${OBJECTDIR}/_ext/700024671/usb_host.o.d ${OBJECTDIR}/_ext/1488356311/initialization.o.d ${OBJECTDIR}/_ext/1488356311/fault_handlers.o.d ${OBJECTDIR}/_ext/1488356311/tasks.o.d ${OBJECTDIR}/_ext/1488356311/usb_host_init_data.o.d ${OBJECTDIR}/_ext/1488356311/interrupts.o.d ${OBJECTDIR}/_ext/1488356311/cstartup.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1336515591/bsp.o ${OBJECTDIR}/_ext/280195744/drv_imx219.o ${OBJECTDIR}/_ext/280195744/drv_cam.o ${OBJECTDIR}/_ext/1154158272/drv_i2c.o ${OBJECTDIR}/_ext/280202058/drv_isc.o ${OBJECTDIR}/_ext/259934552/drv_usb_ohci.o ${OBJECTDIR}/_ext/259934552/drv_usb_ehci.o ${OBJECTDIR}/_ext/1252377785/plib_clk.o ${OBJECTDIR}/_ext/168965410/plib_dwdt.o ${OBJECTDIR}/_ext/177898253/plib_flexcom8_twi_master.o ${OBJECTDIR}/_ext/1252374042/plib_gic.o ${OBJECTDIR}/_ext/1252371810/plib_csi2dc.o ${OBJECTDIR}/_ext/1252371810/plib_isc.o ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi.o ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi_dphy.o ${OBJECTDIR}/_ext/1070821244/plib_matrix.o ${OBJECTDIR}/_ext/1252368134/plib_mmu.o ${OBJECTDIR}/_ext/1252365381/plib_pio.o ${OBJECTDIR}/_ext/1287324758/plib_tc0.o ${OBJECTDIR}/_ext/211982929/xc32_monitor.o ${OBJECTDIR}/_ext/1860097318/sys_cache.o ${OBJECTDIR}/_ext/819346896/ffunicode.o ${OBJECTDIR}/_ext/819346896/ff.o ${OBJECTDIR}/_ext/521048089/diskio.o ${OBJECTDIR}/_ext/1727469238/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1727469238/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/1727469238/sys_fs.o ${OBJECTDIR}/_ext/569125148/sys_int.o ${OBJECTDIR}/_ext/2136021686/sys_time.o ${OBJECTDIR}/_ext/700024671/usb_host_msd.o ${OBJECTDIR}/_ext/700024671/usb_host_scsi.o ${OBJECTDIR}/_ext/700024671/usb_host.o ${OBJECTDIR}/_ext/1488356311/initialization.o ${OBJECTDIR}/_ext/1488356311/fault_handlers.o ${OBJECTDIR}/_ext/1488356311/tasks.o ${OBJECTDIR}/_ext/1488356311/usb_host_init_data.o ${OBJECTDIR}/_ext/1488356311/interrupts.o ${OBJECTDIR}/_ext/1488356311/cstartup.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/sam_a7g5_ek_IMX219/bsp/bsp.c ../src/config/sam_a7g5_ek_IMX219/driver/cam/drv_imx219.c ../src/config/sam_a7g5_ek_IMX219/driver/cam/drv_cam.c ../src/config/sam_a7g5_ek_IMX219/driver/i2c/src/drv_i2c.c ../src/config/sam_a7g5_ek_IMX219/driver/isc/drv_isc.c ../src/config/sam_a7g5_ek_IMX219/driver/usb/uhp/src/drv_usb_ohci.c ../src/config/sam_a7g5_ek_IMX219/driver/usb/uhp/src/drv_usb_ehci.c ../src/config/sam_a7g5_ek_IMX219/peripheral/clk/plib_clk.c ../src/config/sam_a7g5_ek_IMX219/peripheral/dwdt/plib_dwdt.c ../src/config/sam_a7g5_ek_IMX219/peripheral/flexcom/twi/master/plib_flexcom8_twi_master.c ../src/config/sam_a7g5_ek_IMX219/peripheral/gic/plib_gic.c ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_csi2dc.c ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_isc.c ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_mipi_csi.c ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_mipi_csi_dphy.c ../src/config/sam_a7g5_ek_IMX219/peripheral/matrix/plib_matrix.c ../src/config/sam_a7g5_ek_IMX219/peripheral/mmu/plib_mmu.c ../src/config/sam_a7g5_ek_IMX219/peripheral/pio/plib_pio.c ../src/config/sam_a7g5_ek_IMX219/peripheral/tc/plib_tc0.c ../src/config/sam_a7g5_ek_IMX219/stdio/xc32_monitor.c ../src/config/sam_a7g5_ek_IMX219/system/cache/sys_cache.c ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system/ffunicode.c ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system/ff.c ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access/diskio.c ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs_media_manager.c ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs_fat_interface.c ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs.c ../src/config/sam_a7g5_ek_IMX219/system/int/src/sys_int.c ../src/config/sam_a7g5_ek_IMX219/system/time/src/sys_time.c ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host_msd.c ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host_scsi.c ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host.c ../src/config/sam_a7g5_ek_IMX219/initialization.c ../src/config/sam_a7g5_ek_IMX219/fault_handlers.c ../src/config/sam_a7g5_ek_IMX219/tasks.c ../src/config/sam_a7g5_ek_IMX219/usb_host_init_data.c ../src/config/sam_a7g5_ek_IMX219/interrupts.c ../src/config/sam_a7g5_ek_IMX219/cstartup.S ../src/main.c ../src/app.c



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

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=SAMA7G54
ProjectDir="C:\Users\c40450\HarmonyDevel\harmony_gfx_apps_sam_a7g5\apps\mipi_csi\firmware\csi_sam_a7g5_ek.X"
ProjectName=csi_sam_a7g5_ek
ConfName=sam_a7g5_ek_IMX219
ImagePath="${DISTDIR}\csi_sam_a7g5_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="csi_sam_a7g5_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-sam_a7g5_ek_IMX219.mk ${DISTDIR}/csi_sam_a7g5_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [${MP_CC_DIR}/xc32-objcopy -O binary ${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.elf ${DISTDIR}/harmony.bin ]"
	@${MP_CC_DIR}/xc32-objcopy -O binary ${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.elf ${DISTDIR}/harmony.bin 
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=SAMA7G54
MP_LINKER_FILE_OPTION=,--script="..\src\config\sam_a7g5_ek_IMX219\ddr.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1488356311/cstartup.o: ../src/config/sam_a7g5_ek_IMX219/cstartup.S  .generated_files/flags/sam_a7g5_ek_IMX219/77244f07013a4a2a93384af4d6e0c193df35773f .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1488356311" 
	@${RM} ${OBJECTDIR}/_ext/1488356311/cstartup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488356311/cstartup.o 
	@${RM} ${OBJECTDIR}/_ext/1488356311/cstartup.o.ok ${OBJECTDIR}/_ext/1488356311/cstartup.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1488356311/cstartup.o.d"  -o ${OBJECTDIR}/_ext/1488356311/cstartup.o ../src/config/sam_a7g5_ek_IMX219/cstartup.S  -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1488356311/cstartup.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1488356311/cstartup.o.d" "${OBJECTDIR}/_ext/1488356311/cstartup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1488356311/cstartup.o: ../src/config/sam_a7g5_ek_IMX219/cstartup.S  .generated_files/flags/sam_a7g5_ek_IMX219/a6b0ea2114506687a7de69662be48f838308c2f .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1488356311" 
	@${RM} ${OBJECTDIR}/_ext/1488356311/cstartup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488356311/cstartup.o 
	@${RM} ${OBJECTDIR}/_ext/1488356311/cstartup.o.ok ${OBJECTDIR}/_ext/1488356311/cstartup.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1488356311/cstartup.o.d"  -o ${OBJECTDIR}/_ext/1488356311/cstartup.o ../src/config/sam_a7g5_ek_IMX219/cstartup.S  -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1488356311/cstartup.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1488356311/cstartup.o.d" "${OBJECTDIR}/_ext/1488356311/cstartup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1336515591/bsp.o: ../src/config/sam_a7g5_ek_IMX219/bsp/bsp.c  .generated_files/flags/sam_a7g5_ek_IMX219/9d83a16936548d58e0dcaaa505e1406a768ed7c3 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1336515591" 
	@${RM} ${OBJECTDIR}/_ext/1336515591/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1336515591/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1336515591/bsp.o.d" -o ${OBJECTDIR}/_ext/1336515591/bsp.o ../src/config/sam_a7g5_ek_IMX219/bsp/bsp.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/280195744/drv_imx219.o: ../src/config/sam_a7g5_ek_IMX219/driver/cam/drv_imx219.c  .generated_files/flags/sam_a7g5_ek_IMX219/c35396885b5ceb009eb0b50ff3d731dc7dee0355 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/280195744" 
	@${RM} ${OBJECTDIR}/_ext/280195744/drv_imx219.o.d 
	@${RM} ${OBJECTDIR}/_ext/280195744/drv_imx219.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/280195744/drv_imx219.o.d" -o ${OBJECTDIR}/_ext/280195744/drv_imx219.o ../src/config/sam_a7g5_ek_IMX219/driver/cam/drv_imx219.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/280195744/drv_cam.o: ../src/config/sam_a7g5_ek_IMX219/driver/cam/drv_cam.c  .generated_files/flags/sam_a7g5_ek_IMX219/e371bcd8252aa21726b1d8fd1991e21ad9fa30ab .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/280195744" 
	@${RM} ${OBJECTDIR}/_ext/280195744/drv_cam.o.d 
	@${RM} ${OBJECTDIR}/_ext/280195744/drv_cam.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/280195744/drv_cam.o.d" -o ${OBJECTDIR}/_ext/280195744/drv_cam.o ../src/config/sam_a7g5_ek_IMX219/driver/cam/drv_cam.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1154158272/drv_i2c.o: ../src/config/sam_a7g5_ek_IMX219/driver/i2c/src/drv_i2c.c  .generated_files/flags/sam_a7g5_ek_IMX219/b81a4c87d3731d8120ce0866a5830f61e8443b25 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1154158272" 
	@${RM} ${OBJECTDIR}/_ext/1154158272/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1154158272/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1154158272/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/1154158272/drv_i2c.o ../src/config/sam_a7g5_ek_IMX219/driver/i2c/src/drv_i2c.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/280202058/drv_isc.o: ../src/config/sam_a7g5_ek_IMX219/driver/isc/drv_isc.c  .generated_files/flags/sam_a7g5_ek_IMX219/104093d947b3a35f510692b7ffdfa49d13c2decf .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/280202058" 
	@${RM} ${OBJECTDIR}/_ext/280202058/drv_isc.o.d 
	@${RM} ${OBJECTDIR}/_ext/280202058/drv_isc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/280202058/drv_isc.o.d" -o ${OBJECTDIR}/_ext/280202058/drv_isc.o ../src/config/sam_a7g5_ek_IMX219/driver/isc/drv_isc.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/259934552/drv_usb_ohci.o: ../src/config/sam_a7g5_ek_IMX219/driver/usb/uhp/src/drv_usb_ohci.c  .generated_files/flags/sam_a7g5_ek_IMX219/abbf807eef97a396a92b06885bf9836d366d42e1 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/259934552" 
	@${RM} ${OBJECTDIR}/_ext/259934552/drv_usb_ohci.o.d 
	@${RM} ${OBJECTDIR}/_ext/259934552/drv_usb_ohci.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/259934552/drv_usb_ohci.o.d" -o ${OBJECTDIR}/_ext/259934552/drv_usb_ohci.o ../src/config/sam_a7g5_ek_IMX219/driver/usb/uhp/src/drv_usb_ohci.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/259934552/drv_usb_ehci.o: ../src/config/sam_a7g5_ek_IMX219/driver/usb/uhp/src/drv_usb_ehci.c  .generated_files/flags/sam_a7g5_ek_IMX219/6a4a3c3c22c6f0a4608095ddc8f803c97bb8353c .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/259934552" 
	@${RM} ${OBJECTDIR}/_ext/259934552/drv_usb_ehci.o.d 
	@${RM} ${OBJECTDIR}/_ext/259934552/drv_usb_ehci.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/259934552/drv_usb_ehci.o.d" -o ${OBJECTDIR}/_ext/259934552/drv_usb_ehci.o ../src/config/sam_a7g5_ek_IMX219/driver/usb/uhp/src/drv_usb_ehci.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252377785/plib_clk.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/clk/plib_clk.c  .generated_files/flags/sam_a7g5_ek_IMX219/c6c0cb7b51bd0bcce640eb742c2995e834572e3a .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252377785" 
	@${RM} ${OBJECTDIR}/_ext/1252377785/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252377785/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252377785/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1252377785/plib_clk.o ../src/config/sam_a7g5_ek_IMX219/peripheral/clk/plib_clk.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/168965410/plib_dwdt.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/dwdt/plib_dwdt.c  .generated_files/flags/sam_a7g5_ek_IMX219/10f82ddd9a0f7466842b69168c10bb23ee8774c .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/168965410" 
	@${RM} ${OBJECTDIR}/_ext/168965410/plib_dwdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/168965410/plib_dwdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/168965410/plib_dwdt.o.d" -o ${OBJECTDIR}/_ext/168965410/plib_dwdt.o ../src/config/sam_a7g5_ek_IMX219/peripheral/dwdt/plib_dwdt.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/177898253/plib_flexcom8_twi_master.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/flexcom/twi/master/plib_flexcom8_twi_master.c  .generated_files/flags/sam_a7g5_ek_IMX219/76ee622b4269c1cc338e65f8e126a5932173b4e6 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/177898253" 
	@${RM} ${OBJECTDIR}/_ext/177898253/plib_flexcom8_twi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/177898253/plib_flexcom8_twi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/177898253/plib_flexcom8_twi_master.o.d" -o ${OBJECTDIR}/_ext/177898253/plib_flexcom8_twi_master.o ../src/config/sam_a7g5_ek_IMX219/peripheral/flexcom/twi/master/plib_flexcom8_twi_master.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252374042/plib_gic.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/gic/plib_gic.c  .generated_files/flags/sam_a7g5_ek_IMX219/6a363aa8682b1da165bed9908cb5ae64982b1148 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252374042" 
	@${RM} ${OBJECTDIR}/_ext/1252374042/plib_gic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252374042/plib_gic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252374042/plib_gic.o.d" -o ${OBJECTDIR}/_ext/1252374042/plib_gic.o ../src/config/sam_a7g5_ek_IMX219/peripheral/gic/plib_gic.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252371810/plib_csi2dc.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_csi2dc.c  .generated_files/flags/sam_a7g5_ek_IMX219/d703da7aad4e307649efa3c097e633cd61df5773 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252371810" 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_csi2dc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_csi2dc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252371810/plib_csi2dc.o.d" -o ${OBJECTDIR}/_ext/1252371810/plib_csi2dc.o ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_csi2dc.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252371810/plib_isc.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_isc.c  .generated_files/flags/sam_a7g5_ek_IMX219/5b829c0c5fd806430fd619da426ab9c5fbe94892 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252371810" 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_isc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_isc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252371810/plib_isc.o.d" -o ${OBJECTDIR}/_ext/1252371810/plib_isc.o ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_isc.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252371810/plib_mipi_csi.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_mipi_csi.c  .generated_files/flags/sam_a7g5_ek_IMX219/5e4db57fadc3afb08027b2d02c3417ebfc1cade1 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252371810" 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252371810/plib_mipi_csi.o.d" -o ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi.o ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_mipi_csi.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252371810/plib_mipi_csi_dphy.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_mipi_csi_dphy.c  .generated_files/flags/sam_a7g5_ek_IMX219/3554e03b0aab54f1af9c3ff28cea184d4832914c .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252371810" 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi_dphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi_dphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252371810/plib_mipi_csi_dphy.o.d" -o ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi_dphy.o ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_mipi_csi_dphy.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1070821244/plib_matrix.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/matrix/plib_matrix.c  .generated_files/flags/sam_a7g5_ek_IMX219/f7ead952288ab53e0a55818d2b1ef7d5d5a54471 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1070821244" 
	@${RM} ${OBJECTDIR}/_ext/1070821244/plib_matrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1070821244/plib_matrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1070821244/plib_matrix.o.d" -o ${OBJECTDIR}/_ext/1070821244/plib_matrix.o ../src/config/sam_a7g5_ek_IMX219/peripheral/matrix/plib_matrix.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252368134/plib_mmu.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/mmu/plib_mmu.c  .generated_files/flags/sam_a7g5_ek_IMX219/5d8856056488ba79d284b1864f9c931fc8785478 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252368134" 
	@${RM} ${OBJECTDIR}/_ext/1252368134/plib_mmu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252368134/plib_mmu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252368134/plib_mmu.o.d" -o ${OBJECTDIR}/_ext/1252368134/plib_mmu.o ../src/config/sam_a7g5_ek_IMX219/peripheral/mmu/plib_mmu.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252365381/plib_pio.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/pio/plib_pio.c  .generated_files/flags/sam_a7g5_ek_IMX219/604d90c2e35b60d892d8a87f35a4f2961585a47 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252365381" 
	@${RM} ${OBJECTDIR}/_ext/1252365381/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252365381/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252365381/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1252365381/plib_pio.o ../src/config/sam_a7g5_ek_IMX219/peripheral/pio/plib_pio.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1287324758/plib_tc0.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/tc/plib_tc0.c  .generated_files/flags/sam_a7g5_ek_IMX219/2a35b4fd08f07877bd182cd2cce538f3cc712050 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1287324758" 
	@${RM} ${OBJECTDIR}/_ext/1287324758/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1287324758/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1287324758/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/1287324758/plib_tc0.o ../src/config/sam_a7g5_ek_IMX219/peripheral/tc/plib_tc0.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/211982929/xc32_monitor.o: ../src/config/sam_a7g5_ek_IMX219/stdio/xc32_monitor.c  .generated_files/flags/sam_a7g5_ek_IMX219/1a0ab9b0a7d43a54fd1e6477c329e9767f4076bb .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/211982929" 
	@${RM} ${OBJECTDIR}/_ext/211982929/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/211982929/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/211982929/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/211982929/xc32_monitor.o ../src/config/sam_a7g5_ek_IMX219/stdio/xc32_monitor.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1860097318/sys_cache.o: ../src/config/sam_a7g5_ek_IMX219/system/cache/sys_cache.c  .generated_files/flags/sam_a7g5_ek_IMX219/ada118584d217b82e30b5169347674cbbeed1a03 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1860097318" 
	@${RM} ${OBJECTDIR}/_ext/1860097318/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860097318/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1860097318/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1860097318/sys_cache.o ../src/config/sam_a7g5_ek_IMX219/system/cache/sys_cache.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/819346896/ffunicode.o: ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/sam_a7g5_ek_IMX219/9ff4c6197b459d99f27704f215f3b447f76f7912 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/819346896" 
	@${RM} ${OBJECTDIR}/_ext/819346896/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/819346896/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/819346896/ffunicode.o.d" -o ${OBJECTDIR}/_ext/819346896/ffunicode.o ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/819346896/ff.o: ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/sam_a7g5_ek_IMX219/a54a016a84604ced8f17855b946f3f21d31bdd39 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/819346896" 
	@${RM} ${OBJECTDIR}/_ext/819346896/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/819346896/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/819346896/ff.o.d" -o ${OBJECTDIR}/_ext/819346896/ff.o ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system/ff.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/521048089/diskio.o: ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/sam_a7g5_ek_IMX219/31016e74703e51988a8d295c3169f62177ccb569 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/521048089" 
	@${RM} ${OBJECTDIR}/_ext/521048089/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/521048089/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/521048089/diskio.o.d" -o ${OBJECTDIR}/_ext/521048089/diskio.o ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1727469238/sys_fs_media_manager.o: ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/sam_a7g5_ek_IMX219/d16122edb0150f5e7ad6c52f56c8544f4d87965 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1727469238" 
	@${RM} ${OBJECTDIR}/_ext/1727469238/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727469238/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1727469238/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1727469238/sys_fs_media_manager.o ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs_media_manager.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1727469238/sys_fs_fat_interface.o: ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/sam_a7g5_ek_IMX219/97111817e6b3c087409cf3eaa59b0f2ee04f58d1 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1727469238" 
	@${RM} ${OBJECTDIR}/_ext/1727469238/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727469238/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1727469238/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1727469238/sys_fs_fat_interface.o ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1727469238/sys_fs.o: ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs.c  .generated_files/flags/sam_a7g5_ek_IMX219/8e82ec3cfff5da1b4e5f44f718cd85a8cb14f679 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1727469238" 
	@${RM} ${OBJECTDIR}/_ext/1727469238/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727469238/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1727469238/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1727469238/sys_fs.o ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/569125148/sys_int.o: ../src/config/sam_a7g5_ek_IMX219/system/int/src/sys_int.c  .generated_files/flags/sam_a7g5_ek_IMX219/e840d44f2b1f92a657944245f6f35ee7e2d05893 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/569125148" 
	@${RM} ${OBJECTDIR}/_ext/569125148/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/569125148/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/569125148/sys_int.o.d" -o ${OBJECTDIR}/_ext/569125148/sys_int.o ../src/config/sam_a7g5_ek_IMX219/system/int/src/sys_int.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2136021686/sys_time.o: ../src/config/sam_a7g5_ek_IMX219/system/time/src/sys_time.c  .generated_files/flags/sam_a7g5_ek_IMX219/629552b4f9e66139f946bdcb43676ae6573828fc .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/2136021686" 
	@${RM} ${OBJECTDIR}/_ext/2136021686/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136021686/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2136021686/sys_time.o.d" -o ${OBJECTDIR}/_ext/2136021686/sys_time.o ../src/config/sam_a7g5_ek_IMX219/system/time/src/sys_time.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/700024671/usb_host_msd.o: ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host_msd.c  .generated_files/flags/sam_a7g5_ek_IMX219/d878ac3179aaa2c5ad432189302fcf7e920ea9d8 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/700024671" 
	@${RM} ${OBJECTDIR}/_ext/700024671/usb_host_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/700024671/usb_host_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/700024671/usb_host_msd.o.d" -o ${OBJECTDIR}/_ext/700024671/usb_host_msd.o ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host_msd.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/700024671/usb_host_scsi.o: ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host_scsi.c  .generated_files/flags/sam_a7g5_ek_IMX219/43c843a7786ac80668ec63f0cb5769dbb610fc00 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/700024671" 
	@${RM} ${OBJECTDIR}/_ext/700024671/usb_host_scsi.o.d 
	@${RM} ${OBJECTDIR}/_ext/700024671/usb_host_scsi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/700024671/usb_host_scsi.o.d" -o ${OBJECTDIR}/_ext/700024671/usb_host_scsi.o ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host_scsi.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/700024671/usb_host.o: ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host.c  .generated_files/flags/sam_a7g5_ek_IMX219/425b7d79f27e9a20c9c5b857e7c209c2b57ad65c .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/700024671" 
	@${RM} ${OBJECTDIR}/_ext/700024671/usb_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/700024671/usb_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/700024671/usb_host.o.d" -o ${OBJECTDIR}/_ext/700024671/usb_host.o ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1488356311/initialization.o: ../src/config/sam_a7g5_ek_IMX219/initialization.c  .generated_files/flags/sam_a7g5_ek_IMX219/c3e2c653879becc8356a64e8b6fe6843a033d729 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1488356311" 
	@${RM} ${OBJECTDIR}/_ext/1488356311/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488356311/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1488356311/initialization.o.d" -o ${OBJECTDIR}/_ext/1488356311/initialization.o ../src/config/sam_a7g5_ek_IMX219/initialization.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1488356311/fault_handlers.o: ../src/config/sam_a7g5_ek_IMX219/fault_handlers.c  .generated_files/flags/sam_a7g5_ek_IMX219/3708adde8a33e9bbbbac75524fa8f1f500070463 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1488356311" 
	@${RM} ${OBJECTDIR}/_ext/1488356311/fault_handlers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488356311/fault_handlers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1488356311/fault_handlers.o.d" -o ${OBJECTDIR}/_ext/1488356311/fault_handlers.o ../src/config/sam_a7g5_ek_IMX219/fault_handlers.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1488356311/tasks.o: ../src/config/sam_a7g5_ek_IMX219/tasks.c  .generated_files/flags/sam_a7g5_ek_IMX219/a90b51182d41e11af3f68f73ee3885ebb9536e81 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1488356311" 
	@${RM} ${OBJECTDIR}/_ext/1488356311/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488356311/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1488356311/tasks.o.d" -o ${OBJECTDIR}/_ext/1488356311/tasks.o ../src/config/sam_a7g5_ek_IMX219/tasks.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1488356311/usb_host_init_data.o: ../src/config/sam_a7g5_ek_IMX219/usb_host_init_data.c  .generated_files/flags/sam_a7g5_ek_IMX219/d481a85d0b91679ae71efc81328495c4e907fecd .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1488356311" 
	@${RM} ${OBJECTDIR}/_ext/1488356311/usb_host_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488356311/usb_host_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1488356311/usb_host_init_data.o.d" -o ${OBJECTDIR}/_ext/1488356311/usb_host_init_data.o ../src/config/sam_a7g5_ek_IMX219/usb_host_init_data.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1488356311/interrupts.o: ../src/config/sam_a7g5_ek_IMX219/interrupts.c  .generated_files/flags/sam_a7g5_ek_IMX219/6e8dd8d24589ac888c3d9f7129d5b2b92505012f .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1488356311" 
	@${RM} ${OBJECTDIR}/_ext/1488356311/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488356311/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1488356311/interrupts.o.d" -o ${OBJECTDIR}/_ext/1488356311/interrupts.o ../src/config/sam_a7g5_ek_IMX219/interrupts.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_a7g5_ek_IMX219/6a31ae405c6bc5a2c6a01744eda7d084e9a614db .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_a7g5_ek_IMX219/20979a3456d69b2d3600738ff01ee83a136298a0 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1336515591/bsp.o: ../src/config/sam_a7g5_ek_IMX219/bsp/bsp.c  .generated_files/flags/sam_a7g5_ek_IMX219/f3ab1e0f74e5a32cced5bcfa7e84521341bbd0c3 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1336515591" 
	@${RM} ${OBJECTDIR}/_ext/1336515591/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1336515591/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1336515591/bsp.o.d" -o ${OBJECTDIR}/_ext/1336515591/bsp.o ../src/config/sam_a7g5_ek_IMX219/bsp/bsp.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/280195744/drv_imx219.o: ../src/config/sam_a7g5_ek_IMX219/driver/cam/drv_imx219.c  .generated_files/flags/sam_a7g5_ek_IMX219/4985f707b50a6d12538940bd2a7bcf6b283dd8c .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/280195744" 
	@${RM} ${OBJECTDIR}/_ext/280195744/drv_imx219.o.d 
	@${RM} ${OBJECTDIR}/_ext/280195744/drv_imx219.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/280195744/drv_imx219.o.d" -o ${OBJECTDIR}/_ext/280195744/drv_imx219.o ../src/config/sam_a7g5_ek_IMX219/driver/cam/drv_imx219.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/280195744/drv_cam.o: ../src/config/sam_a7g5_ek_IMX219/driver/cam/drv_cam.c  .generated_files/flags/sam_a7g5_ek_IMX219/c04df74596b325f2dd5947f21e06236af9b250af .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/280195744" 
	@${RM} ${OBJECTDIR}/_ext/280195744/drv_cam.o.d 
	@${RM} ${OBJECTDIR}/_ext/280195744/drv_cam.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/280195744/drv_cam.o.d" -o ${OBJECTDIR}/_ext/280195744/drv_cam.o ../src/config/sam_a7g5_ek_IMX219/driver/cam/drv_cam.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1154158272/drv_i2c.o: ../src/config/sam_a7g5_ek_IMX219/driver/i2c/src/drv_i2c.c  .generated_files/flags/sam_a7g5_ek_IMX219/4fe62f3f8f0e177c18e25d540d70f387c336c97f .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1154158272" 
	@${RM} ${OBJECTDIR}/_ext/1154158272/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1154158272/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1154158272/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/1154158272/drv_i2c.o ../src/config/sam_a7g5_ek_IMX219/driver/i2c/src/drv_i2c.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/280202058/drv_isc.o: ../src/config/sam_a7g5_ek_IMX219/driver/isc/drv_isc.c  .generated_files/flags/sam_a7g5_ek_IMX219/4d3bc1af5c3fdd7d741baba9dd9d63ec14e3a630 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/280202058" 
	@${RM} ${OBJECTDIR}/_ext/280202058/drv_isc.o.d 
	@${RM} ${OBJECTDIR}/_ext/280202058/drv_isc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/280202058/drv_isc.o.d" -o ${OBJECTDIR}/_ext/280202058/drv_isc.o ../src/config/sam_a7g5_ek_IMX219/driver/isc/drv_isc.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/259934552/drv_usb_ohci.o: ../src/config/sam_a7g5_ek_IMX219/driver/usb/uhp/src/drv_usb_ohci.c  .generated_files/flags/sam_a7g5_ek_IMX219/afd419802ed86176d0ebe582602886ee485fce77 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/259934552" 
	@${RM} ${OBJECTDIR}/_ext/259934552/drv_usb_ohci.o.d 
	@${RM} ${OBJECTDIR}/_ext/259934552/drv_usb_ohci.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/259934552/drv_usb_ohci.o.d" -o ${OBJECTDIR}/_ext/259934552/drv_usb_ohci.o ../src/config/sam_a7g5_ek_IMX219/driver/usb/uhp/src/drv_usb_ohci.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/259934552/drv_usb_ehci.o: ../src/config/sam_a7g5_ek_IMX219/driver/usb/uhp/src/drv_usb_ehci.c  .generated_files/flags/sam_a7g5_ek_IMX219/3f05183c02829758df57d3a51b0b6e28398b163a .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/259934552" 
	@${RM} ${OBJECTDIR}/_ext/259934552/drv_usb_ehci.o.d 
	@${RM} ${OBJECTDIR}/_ext/259934552/drv_usb_ehci.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/259934552/drv_usb_ehci.o.d" -o ${OBJECTDIR}/_ext/259934552/drv_usb_ehci.o ../src/config/sam_a7g5_ek_IMX219/driver/usb/uhp/src/drv_usb_ehci.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252377785/plib_clk.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/clk/plib_clk.c  .generated_files/flags/sam_a7g5_ek_IMX219/5bee2afa1bf276f0c5282266c0ce9f2167c856a4 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252377785" 
	@${RM} ${OBJECTDIR}/_ext/1252377785/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252377785/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252377785/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1252377785/plib_clk.o ../src/config/sam_a7g5_ek_IMX219/peripheral/clk/plib_clk.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/168965410/plib_dwdt.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/dwdt/plib_dwdt.c  .generated_files/flags/sam_a7g5_ek_IMX219/1d8681ad4e58e27f129ffe1f85461a25972ebe85 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/168965410" 
	@${RM} ${OBJECTDIR}/_ext/168965410/plib_dwdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/168965410/plib_dwdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/168965410/plib_dwdt.o.d" -o ${OBJECTDIR}/_ext/168965410/plib_dwdt.o ../src/config/sam_a7g5_ek_IMX219/peripheral/dwdt/plib_dwdt.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/177898253/plib_flexcom8_twi_master.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/flexcom/twi/master/plib_flexcom8_twi_master.c  .generated_files/flags/sam_a7g5_ek_IMX219/c149ff0677815a37cc1275fb5244cb0f5ee33a43 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/177898253" 
	@${RM} ${OBJECTDIR}/_ext/177898253/plib_flexcom8_twi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/177898253/plib_flexcom8_twi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/177898253/plib_flexcom8_twi_master.o.d" -o ${OBJECTDIR}/_ext/177898253/plib_flexcom8_twi_master.o ../src/config/sam_a7g5_ek_IMX219/peripheral/flexcom/twi/master/plib_flexcom8_twi_master.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252374042/plib_gic.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/gic/plib_gic.c  .generated_files/flags/sam_a7g5_ek_IMX219/ff21fce601092f590e12ee8012b09c2a6ae35675 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252374042" 
	@${RM} ${OBJECTDIR}/_ext/1252374042/plib_gic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252374042/plib_gic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252374042/plib_gic.o.d" -o ${OBJECTDIR}/_ext/1252374042/plib_gic.o ../src/config/sam_a7g5_ek_IMX219/peripheral/gic/plib_gic.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252371810/plib_csi2dc.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_csi2dc.c  .generated_files/flags/sam_a7g5_ek_IMX219/ea06e4dc4f9f1c580c4a9fd614bea1355f7e096d .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252371810" 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_csi2dc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_csi2dc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252371810/plib_csi2dc.o.d" -o ${OBJECTDIR}/_ext/1252371810/plib_csi2dc.o ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_csi2dc.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252371810/plib_isc.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_isc.c  .generated_files/flags/sam_a7g5_ek_IMX219/91183d5316a11f98ab0fda2bb0cc9ba747c9c709 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252371810" 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_isc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_isc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252371810/plib_isc.o.d" -o ${OBJECTDIR}/_ext/1252371810/plib_isc.o ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_isc.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252371810/plib_mipi_csi.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_mipi_csi.c  .generated_files/flags/sam_a7g5_ek_IMX219/4e8aba5723c727e7d464b9e676873e8a0ff152bf .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252371810" 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252371810/plib_mipi_csi.o.d" -o ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi.o ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_mipi_csi.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252371810/plib_mipi_csi_dphy.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_mipi_csi_dphy.c  .generated_files/flags/sam_a7g5_ek_IMX219/84f9206b49172f5a2b4c81f5a90d24a52c2c9ecd .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252371810" 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi_dphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi_dphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252371810/plib_mipi_csi_dphy.o.d" -o ${OBJECTDIR}/_ext/1252371810/plib_mipi_csi_dphy.o ../src/config/sam_a7g5_ek_IMX219/peripheral/isc/plib_mipi_csi_dphy.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1070821244/plib_matrix.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/matrix/plib_matrix.c  .generated_files/flags/sam_a7g5_ek_IMX219/e7085cd7a04ae9b5de85d961760ce00d4fe37331 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1070821244" 
	@${RM} ${OBJECTDIR}/_ext/1070821244/plib_matrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1070821244/plib_matrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1070821244/plib_matrix.o.d" -o ${OBJECTDIR}/_ext/1070821244/plib_matrix.o ../src/config/sam_a7g5_ek_IMX219/peripheral/matrix/plib_matrix.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252368134/plib_mmu.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/mmu/plib_mmu.c  .generated_files/flags/sam_a7g5_ek_IMX219/e3b376e7d8485ffe38586bfa1d9b118971e0be04 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252368134" 
	@${RM} ${OBJECTDIR}/_ext/1252368134/plib_mmu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252368134/plib_mmu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252368134/plib_mmu.o.d" -o ${OBJECTDIR}/_ext/1252368134/plib_mmu.o ../src/config/sam_a7g5_ek_IMX219/peripheral/mmu/plib_mmu.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1252365381/plib_pio.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/pio/plib_pio.c  .generated_files/flags/sam_a7g5_ek_IMX219/f798c0a17cbe67fbebeb3b00d495250aec5e0dd2 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1252365381" 
	@${RM} ${OBJECTDIR}/_ext/1252365381/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1252365381/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1252365381/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1252365381/plib_pio.o ../src/config/sam_a7g5_ek_IMX219/peripheral/pio/plib_pio.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1287324758/plib_tc0.o: ../src/config/sam_a7g5_ek_IMX219/peripheral/tc/plib_tc0.c  .generated_files/flags/sam_a7g5_ek_IMX219/56e40b3e782f12bba72da7b998add57dcc062362 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1287324758" 
	@${RM} ${OBJECTDIR}/_ext/1287324758/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1287324758/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1287324758/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/1287324758/plib_tc0.o ../src/config/sam_a7g5_ek_IMX219/peripheral/tc/plib_tc0.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/211982929/xc32_monitor.o: ../src/config/sam_a7g5_ek_IMX219/stdio/xc32_monitor.c  .generated_files/flags/sam_a7g5_ek_IMX219/1d5e460b5c52689196f21f0ffc7344649875d94d .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/211982929" 
	@${RM} ${OBJECTDIR}/_ext/211982929/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/211982929/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/211982929/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/211982929/xc32_monitor.o ../src/config/sam_a7g5_ek_IMX219/stdio/xc32_monitor.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1860097318/sys_cache.o: ../src/config/sam_a7g5_ek_IMX219/system/cache/sys_cache.c  .generated_files/flags/sam_a7g5_ek_IMX219/a24998a7b8ef82de9542df401fc4f384f06649c5 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1860097318" 
	@${RM} ${OBJECTDIR}/_ext/1860097318/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860097318/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1860097318/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1860097318/sys_cache.o ../src/config/sam_a7g5_ek_IMX219/system/cache/sys_cache.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/819346896/ffunicode.o: ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/sam_a7g5_ek_IMX219/553be25ad564f38b00f5229ff06186399db92b75 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/819346896" 
	@${RM} ${OBJECTDIR}/_ext/819346896/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/819346896/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/819346896/ffunicode.o.d" -o ${OBJECTDIR}/_ext/819346896/ffunicode.o ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/819346896/ff.o: ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/sam_a7g5_ek_IMX219/85e061b320ad75b1bc449f410bc0763ef79865d8 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/819346896" 
	@${RM} ${OBJECTDIR}/_ext/819346896/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/819346896/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/819346896/ff.o.d" -o ${OBJECTDIR}/_ext/819346896/ff.o ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system/ff.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/521048089/diskio.o: ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/sam_a7g5_ek_IMX219/68a5fe4cc992a0b046240ec4cab4ec7a041ab495 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/521048089" 
	@${RM} ${OBJECTDIR}/_ext/521048089/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/521048089/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/521048089/diskio.o.d" -o ${OBJECTDIR}/_ext/521048089/diskio.o ../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1727469238/sys_fs_media_manager.o: ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/sam_a7g5_ek_IMX219/5bb660cce134782f2c436e03c92babad34b4aa6 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1727469238" 
	@${RM} ${OBJECTDIR}/_ext/1727469238/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727469238/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1727469238/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1727469238/sys_fs_media_manager.o ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs_media_manager.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1727469238/sys_fs_fat_interface.o: ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/sam_a7g5_ek_IMX219/4671bf46cdb0d34ee03fcc37f3b2bec40e5f2f3b .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1727469238" 
	@${RM} ${OBJECTDIR}/_ext/1727469238/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727469238/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1727469238/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1727469238/sys_fs_fat_interface.o ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1727469238/sys_fs.o: ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs.c  .generated_files/flags/sam_a7g5_ek_IMX219/3261dbb9cca8986425ccd932b2eea8da84cdaf3b .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1727469238" 
	@${RM} ${OBJECTDIR}/_ext/1727469238/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727469238/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1727469238/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1727469238/sys_fs.o ../src/config/sam_a7g5_ek_IMX219/system/fs/src/sys_fs.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/569125148/sys_int.o: ../src/config/sam_a7g5_ek_IMX219/system/int/src/sys_int.c  .generated_files/flags/sam_a7g5_ek_IMX219/33b40a8f698f3c6fd2062de54f69325f301f68c9 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/569125148" 
	@${RM} ${OBJECTDIR}/_ext/569125148/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/569125148/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/569125148/sys_int.o.d" -o ${OBJECTDIR}/_ext/569125148/sys_int.o ../src/config/sam_a7g5_ek_IMX219/system/int/src/sys_int.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2136021686/sys_time.o: ../src/config/sam_a7g5_ek_IMX219/system/time/src/sys_time.c  .generated_files/flags/sam_a7g5_ek_IMX219/6e1448dd8b1d1649808dbc26d1c7bfc1cc65602a .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/2136021686" 
	@${RM} ${OBJECTDIR}/_ext/2136021686/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136021686/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2136021686/sys_time.o.d" -o ${OBJECTDIR}/_ext/2136021686/sys_time.o ../src/config/sam_a7g5_ek_IMX219/system/time/src/sys_time.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/700024671/usb_host_msd.o: ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host_msd.c  .generated_files/flags/sam_a7g5_ek_IMX219/85fec04aa29655544a5e2675ef2de506315c9774 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/700024671" 
	@${RM} ${OBJECTDIR}/_ext/700024671/usb_host_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/700024671/usb_host_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/700024671/usb_host_msd.o.d" -o ${OBJECTDIR}/_ext/700024671/usb_host_msd.o ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host_msd.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/700024671/usb_host_scsi.o: ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host_scsi.c  .generated_files/flags/sam_a7g5_ek_IMX219/33424ebf4ceb19dd3ecaed4f363267c4d333bc22 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/700024671" 
	@${RM} ${OBJECTDIR}/_ext/700024671/usb_host_scsi.o.d 
	@${RM} ${OBJECTDIR}/_ext/700024671/usb_host_scsi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/700024671/usb_host_scsi.o.d" -o ${OBJECTDIR}/_ext/700024671/usb_host_scsi.o ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host_scsi.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/700024671/usb_host.o: ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host.c  .generated_files/flags/sam_a7g5_ek_IMX219/b91293c0e3dbe6be509368154e540b6cc376e6db .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/700024671" 
	@${RM} ${OBJECTDIR}/_ext/700024671/usb_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/700024671/usb_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/700024671/usb_host.o.d" -o ${OBJECTDIR}/_ext/700024671/usb_host.o ../src/config/sam_a7g5_ek_IMX219/usb/src/usb_host.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1488356311/initialization.o: ../src/config/sam_a7g5_ek_IMX219/initialization.c  .generated_files/flags/sam_a7g5_ek_IMX219/89b8269269690383b7c9535f183c8e5a36afb8e5 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1488356311" 
	@${RM} ${OBJECTDIR}/_ext/1488356311/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488356311/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1488356311/initialization.o.d" -o ${OBJECTDIR}/_ext/1488356311/initialization.o ../src/config/sam_a7g5_ek_IMX219/initialization.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1488356311/fault_handlers.o: ../src/config/sam_a7g5_ek_IMX219/fault_handlers.c  .generated_files/flags/sam_a7g5_ek_IMX219/4bcc7eb9913c699f7975622da95e9b8d77cabed7 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1488356311" 
	@${RM} ${OBJECTDIR}/_ext/1488356311/fault_handlers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488356311/fault_handlers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1488356311/fault_handlers.o.d" -o ${OBJECTDIR}/_ext/1488356311/fault_handlers.o ../src/config/sam_a7g5_ek_IMX219/fault_handlers.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1488356311/tasks.o: ../src/config/sam_a7g5_ek_IMX219/tasks.c  .generated_files/flags/sam_a7g5_ek_IMX219/c1a09a73b403cf12789b741f7662b3052a996754 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1488356311" 
	@${RM} ${OBJECTDIR}/_ext/1488356311/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488356311/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1488356311/tasks.o.d" -o ${OBJECTDIR}/_ext/1488356311/tasks.o ../src/config/sam_a7g5_ek_IMX219/tasks.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1488356311/usb_host_init_data.o: ../src/config/sam_a7g5_ek_IMX219/usb_host_init_data.c  .generated_files/flags/sam_a7g5_ek_IMX219/529083a6b32fba55bcc7e5937a90760a534636c0 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1488356311" 
	@${RM} ${OBJECTDIR}/_ext/1488356311/usb_host_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488356311/usb_host_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1488356311/usb_host_init_data.o.d" -o ${OBJECTDIR}/_ext/1488356311/usb_host_init_data.o ../src/config/sam_a7g5_ek_IMX219/usb_host_init_data.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1488356311/interrupts.o: ../src/config/sam_a7g5_ek_IMX219/interrupts.c  .generated_files/flags/sam_a7g5_ek_IMX219/a411524eb767f8693a25fdd8b11d0c1cb93ef5ca .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1488356311" 
	@${RM} ${OBJECTDIR}/_ext/1488356311/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1488356311/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1488356311/interrupts.o.d" -o ${OBJECTDIR}/_ext/1488356311/interrupts.o ../src/config/sam_a7g5_ek_IMX219/interrupts.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_a7g5_ek_IMX219/919e76d5da92dca7e6554ae4b41b9366ec3c1383 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_a7g5_ek_IMX219/db2031d3ba65336a01819f825d6927fe1b7f9f25 .generated_files/flags/sam_a7g5_ek_IMX219/652be7c24d995a55c00f3f02843e2023b5d614e4
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/sam_a7g5_ek_IMX219" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/file_system" -I"../src/config/sam_a7g5_ek_IMX219/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7G54_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wmissing-noreturn  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/csi_sam_a7g5_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_a7g5_ek_IMX219/ddr.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/csi_sam_a7g5_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/csi_sam_a7g5_ek.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_a7g5_ek_IMX219/ddr.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/csi_sam_a7g5_ek.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_a7g5_ek_IMX219=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/csi_sam_a7g5_ek.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
