# MD5: cb4b6a39f079c03ce051c61719a49617
CFG_BALONG_OBUILD_VERSION:=10
CFG_PRODUCT_NAME                      :="hi6250"
CFG_PRODUCT_CFG_CHIP_SOLUTION_NAME    :="Balong"
CFG_BUILD_TYPE                        :=RELEASE
CFG_PRODUCT_VERSION                   :=K300V300C00B000
CFG_PRODUCT_VERSION_STR               :="Dallas V100R001C60B257"
CFG_PRODUCT_FULL_VERSION_STR          :="Dallas V100R001C60B257"
CFG_PRODUCT_FILE_VERSION_STR          :="2.1.6.8"
CFG_PRODUCT_DLOAD_SOFTWARE_VER		:= "21C60B257S000C000"
CFG_PLATFORM :=hi6250
CFG_PLATFORM_CHIP_TYPE := hi6250
CFG_NV_VERSION :=nv_history
CFG_CONFIG_DYNAMIC_LOAD := YES
CFG_OS_PATH :=config/product/hi6250/os
CFG_OS_IMG_FILE:=VXWORKS.6.8.3.IMG.wpj
CFG_OS_LIB:=VXWORKS.6.8.3.LIB.RELEASE
CFG_FTP_REPLY_TIME_OUT:=0
CFG_UPHY_BOARD_TYPE                     := 2
CFG_OS_LINUX_PRODUCT_NAME          :=hisi_6250_defconfig
CFG_OS_K3V3_USE_LPM3_API           :=YES
CFG_BSP_CONFIG_HI3650 := YES
CFG_BSP_CONFIG_PHONE_TYPE := YES
CFG_BSP_CONFIG_HI6250 := YES
CFG_BSP_CONFIG_BOARD_SFT := NO
CFG_BSP_CONFIG_EDA := NO
CFG_BSP_CONFIG_EMU := NO
CFG_BSP_CONFIG_NOT_DDR_BYPASSPLL := NO
CFG_BSP_ENABLE_SEC_VERIFY   := NO
CFG_BSP_HAS_SEC_FEATURE     := NO
CFG_BSP_ICC_MCHANNEL_USE_LPM3TCM := YES
CFG_BSP_MONITOR_DEBUG_UNSET := YES
CFG_PLATFORM_HISI_BALONG :=hi6250
CFG_FEATURE_ON                                  := 1
CFG_FEATURE_OFF                                 := 0
CFG_FEATURE_LTE_4RX                        := FEATURE_OFF
CFG_PRODUCT_CONTROL_VERSION                 :="121"
CFG_PRODUCT_HISILICON_VERSION               :=hi6250
CFG_PRODUCT_NV_SPLITFILE                    :=/binfilesplit "0"
CFG_PRODUCT_NV_FILE_MAX_SIZE                :=/binfileLimitSize "100"
CFG_PRODUCT_NV_BIN_MODEM_NUNBER             :=/bin_modem_number "2"
CFG_PRODUCT_NV_XNV_MODEM_NUNBER             :=/xnv_modem_number "2"
CFG_PRODUCT_NV_XNV_PDT_VERSION              :=v8r5_udp
CFG_MCORE_TEXT_START_ADDR       := 0x38400000
CFG_RTX_KERNEL_ENTRY            := 0x10000000
CFG_HI_SRAM_MEM_ADDR            := 0xE0800000
CFG_HI_SRAM_SIZE                := 0x4000
CFG_DRV_SRAM_ADDR               := (HI_SRAM_MEM_ADDR)
CFG_DRV_SRAM_SIZE               := 0x2000
CFG_CPHY_SRAM_ADDR              := ((DRV_SRAM_ADDR) + (DRV_SRAM_SIZE))
CFG_CPHY_SRAM_SIZE              := 0xA0
CFG_CPHY_LPC_SRAM_ADDR          := ( CPHY_SRAM_ADDR )
CFG_CPHY_LPC_SRAM_SIZE          := 0x38
CFG_CPHY_1X_DATA_MBX_SRAM_ADDR  := ( (CPHY_LPC_SRAM_ADDR) + (CPHY_LPC_SRAM_SIZE) )
CFG_CPHY_1X_DATA_MBX_SRAM_SIZE  := 0x28
CFG_CPHY_HRPD_DATA_MBX_SRAM_ADDR:= ( (CPHY_1X_DATA_MBX_SRAM_ADDR) + (CPHY_1X_DATA_MBX_SRAM_SIZE) )
CFG_CPHY_HRPD_DATA_MBX_SRAM_SIZE:= 0x40
CFG_GPHY_SRAM_ADDR              := ((CPHY_SRAM_ADDR) + (CPHY_SRAM_SIZE))
CFG_GPHY_SRAM_SIZE              := 0x40
CFG_DDR_MEM_ADDR                := 0x38000000
CFG_DDR_MEM_SIZE                := 0x08000000
CFG_DDR_SECMEM_SIZE             := 0x06c00000
CFG_DDR_APP_ACP_ADDR            := (DDR_MEM_ADDR)
CFG_DDR_APP_ACP_SIZE            := 0x000000
CFG_DDR_GU_ADDR                 := ((DDR_APP_ACP_ADDR) + (DDR_APP_ACP_SIZE))
CFG_DDR_GU_SIZE                 := 0x000C0000
CFG_DDR_UPA_ADDR                := DDR_GU_ADDR
CFG_DDR_UPA_SIZE                := 0x00024000
CFG_DDR_CQI_ADDR                := ((DDR_UPA_ADDR) + (DDR_UPA_SIZE))
CFG_DDR_CQI_SIZE                := 0x00003400
CFG_DDR_APT_ADDR                := ((DDR_CQI_ADDR) + (DDR_CQI_SIZE))
CFG_DDR_APT_SIZE                := 0x00008400
CFG_DDR_ET_ADDR                 := ((DDR_APT_ADDR) + (DDR_APT_SIZE))
CFG_DDR_ET_SIZE                 := 0x00004800
CFG_DDR_NV_ADDR                 := ((DDR_ET_ADDR) + (DDR_ET_SIZE))
CFG_DDR_NV_SIZE                 := 0x00000000
CFG_DDR_ZSP_UP_ADDR             := ((DDR_NV_ADDR) + (DDR_NV_SIZE))
CFG_DDR_ZSP_UP_SIZE             := 0x00008000
CFG_DDR_ECS_TEE_ADDR            := ((DDR_ZSP_UP_ADDR) + (DDR_ZSP_UP_SIZE))
CFG_DDR_ECS_TEE_SIZE            := 0x00001800
CFG_DDR_MDM_GU_RESERVE_ADDR     := ((DDR_ECS_TEE_ADDR) + (DDR_ECS_TEE_SIZE))
CFG_DDR_MDM_GU_RESERVE_SIZE     := 0x00082800
CFG_DDR_TLPHY_IMAGE_ADDR     	:= ((DDR_MDM_GU_RESERVE_ADDR) + (DDR_MDM_GU_RESERVE_SIZE))
CFG_DDR_TLPHY_IMAGE_SIZE     	:= 0x340000
CFG_DDR_MCORE_ADDR              := (( DDR_TLPHY_IMAGE_ADDR ) + (DDR_TLPHY_IMAGE_SIZE))
CFG_DDR_MCORE_SIZE              := 0x6100000
CFG_DDR_MCORE_DTS_ADDR          := ((DDR_MCORE_ADDR) + (DDR_MCORE_SIZE))
CFG_DDR_MCORE_DTS_SIZE          := 0x0100000
CFG_DDR_CBBE_IMAGE_ADDR         := ((DDR_MCORE_DTS_ADDR) + (DDR_MCORE_DTS_SIZE))
CFG_DDR_CBBE_IMAGE_SIZE         := 0x100000
CFG_DDR_LPHY_SDR_ADDR		:= ((DDR_CBBE_IMAGE_ADDR) + (DDR_CBBE_IMAGE_SIZE))
CFG_DDR_LPHY_SDR_SIZE     	:= 0x200000
CFG_DDR_LCS_ADDR                := ((DDR_LPHY_SDR_ADDR) + (DDR_LPHY_SDR_SIZE))
CFG_DDR_LCS_SIZE                := 0x280000
CFG_DDR_SEC_SHARED_ADDR         := ((DDR_LCS_ADDR) + (DDR_LCS_SIZE))
CFG_DDR_SEC_SHARED_SIZE         := 0x80000
CFG_DDR_ACORE_ADDR              := ((DDR_SEC_SHARED_ADDR) + (DDR_SEC_SHARED_SIZE))
CFG_DDR_ACORE_SIZE              := 0x0
CFG_DDR_ACORE_DTS_ADDR          := ((DDR_ACORE_ADDR) + (DDR_ACORE_SIZE))
CFG_DDR_ACORE_DTS_SIZE          := 0x0
CFG_DDR_MDM_ACP_ADDR            := ((DDR_ACORE_DTS_ADDR) + (DDR_ACORE_DTS_SIZE))
CFG_DDR_MDM_ACP_SIZE            := 0x0
CFG_DDR_SHARED_MEM_ADDR         := ((DDR_MEM_ADDR) + (DDR_SECMEM_SIZE))
CFG_DDR_SHARED_MEM_SIZE         := 0x00400000
CFG_DDR_MNTN_ADDR               := ((DDR_SHARED_MEM_ADDR) + (DDR_SHARED_MEM_SIZE))
CFG_DDR_MNTN_SIZE               := (0x00100000)
CFG_DDR_SOCP_ADDR               := ((DDR_MNTN_ADDR) + (DDR_MNTN_SIZE))
CFG_DDR_SOCP_SIZE               := 0x01000000
CFG_DDR_HIFI_ADDR               := ((DDR_SOCP_ADDR) + (DDR_SOCP_SIZE))
CFG_DDR_HIFI_SIZE               := 0x00900000
CFG_DDR_HIFI_MBX_ADDR               := (DDR_SHARED_MEM_ADDR)
CFG_DDR_HIFI_MBX_SIZE               := (0X9800)
CFG_NV_DDR_SIZE                     := 0x280000
CFG_SHM_SIZE_HIFI_MBX               :=(DDR_HIFI_MBX_SIZE)
CFG_SHM_SIZE_HIFI                   :=(10*1024)
CFG_SHM_SIZE_TLPHY                  :=(12*1024)
CFG_SHM_SIZE_TEMPERATURE            :=(3*1024)
CFG_SHM_SIZE_DDM_LOAD               :=(1*1024)
CFG_SHM_SIZE_MEM_APPA9_PM_BOOT      :=(0x10000)
CFG_SHM_SIZE_MEM_MDMA9_PM_BOOT      :=(0x2000)
CFG_SHM_SIZE_TENCILICA_MULT_BAND    :=(0x8000)
CFG_SHM_SIZE_ICC                    :=(0x61800)
CFG_SHM_SIZE_IPF                    :=(0x10000)
CFG_SHM_SIZE_PSAM                   :=(0x1000)
CFG_SHM_SIZE_WAN                    :=(0x8000)
CFG_SHM_SIZE_NV                     :=(NV_DDR_SIZE)
CFG_SHM_SIZE_M3_MNTN                :=(0x20000)
CFG_SHM_SIZE_TIMESTAMP              :=(1*1024)
CFG_SHM_SIZE_IOS                    :=(6*1024)
CFG_SHM_SIZE_RESTORE_AXI            :=(96*1024)
CFG_SHM_SIZE_PMU                    :=(3*1024)
CFG_SHM_SIZE_PTABLE                 :=(2*1024)
CFG_SHM_SIZE_CCORE_RESET            :=(0x400)
CFG_SHM_SIZE_PM_OM                  :=(256*1024)
CFG_SHM_SIZE_M3PM                   :=(0x1000)
CFG_SHM_SIZE_SLICE_MEM              :=(0x1000)
CFG_SHM_SIZE_OSA_LOG                :=(1024)
CFG_SHM_SIZE_WAS_LOG                :=(1024)
CFG_SHM_SIZE_SRAM_BAK               :=(HI_SRAM_SIZE)
CFG_SHM_SIZE_SRAM_TO_DDR            :=(0)
CFG_SHM_SIZE_M3RSRACC_BD            :=(0)
CFG_SHM_SIZE_SIM_MEMORY             :=(256*1024)
CFG_CORESHARE_MEM_TENCILICA_MULT_BAND_SIZE := 0x8000
CFG_CORESHARE_MEM_TENCILICA_MULT_BAND_ADDR := DDR_SHARED_MEM_ADDR
CFG_CONFIG_VERSION_STUB             :=NO
CFG_HW_VERSION_STUB                 :=0x35FFFFFB
CFG_CONFIG_VER_MASK                 :=0x35000000
CFG_FEATURE_OBJ_CMP 				:=NO
CFG_FEATURE_OBJ_DUMP				:=NO
CFG_BSP_ENBALE_PACK_IMAGE			:=YES
CFG_CONFIG_SMART_SYSTEM_MODEM := NO
CFG_CONFIG_OF := YES
CFG_CONFIG_BALONG_L2CACHE := YES
CFG_CONFIG_FASTBOOT_DEBUG := NO
CFG_CONFIG_FASTBOOT_UART_NUM := 0
CFG_CONFIG_UART_ARM := YES
CFG_CONFIG_UART_SYNOPSYS := NO
CFG_CONFIG_GPIO_PL061 := YES
CFG_CONFIG_GPIO_SYNOPSYS := NO
CFG_ROM_COMPRESS := NO
CFG_CONFIG_COMPRESS_CCORE_IMAGE := NO
CFG_CONFIG_LOAD_SEC_IMAGE := YES
CFG_CONFIG_MODEM_DTB_LOAD_IN_KERNEL := YES
CFG_CONFIG_IS_DTB_VERIFY := YES
CFG_CONFIG_MODULE_VIC := NO
CFG_CONFIG_PCIE_CFG := NO
CFG_CONFIG_PASTAR_DSM := NO
CFG_CONFIG_CIPHER := YES
CFG_CONFIG_AT_UART := NO
CFG_CONFIG_CIPHER_ENABLE_BBPPLL := YES
CFG_CONFIG_CSHELL := NO
CFG_CONFIG_IPF    := YES
CFG_CONFIG_PSAM   := YES
CFG_CONFIG_MODULE_BUSSTRESS := NO
CFG_CONFIG_ICC := YES
CFG_CONFIG_PM_OM := YES
CFG_CONFIG_MEM := YES
CFG_CONFIG_RTC_BUILD_CTRL := YES
CFG_CONFIG_RTC_ON_SOC := YES
CFG_CONFIG_PHONE_PLATFORM := YES
CFG_CONFIG_MDDR_WINBOND := NO
CFG_CONFIG_CPUFREQ := YES
CFG_CONFIG_CCORE_REGULATOR := YES
CFG_CONFIG_CCORE_WDT := YES
CFG_CONFIG_ACORE_WDT := NO
CFG_CONFIG_PHONE_PLATFORM := YES
CFG_CONFIG_PMU_NEW := YES
CFG_CONFIG_COUL := NO
CFG_CONFIG_SPI := NO
CFG_CONFIG_SFLASH := NO
CFG_CONFIG_AUDIO := NO
CFG_CONFIG_SIO := NO
CFG_CONFIG_ABB := YES
CFG_CONFIG_DSP := YES
CFG_CONFIG_TLPHY_LOAD := YES
CFG_CONFIG_CPHY_LOAD := YES
CFG_CONFIG_CBBE   := YES
CFG_CONFIG_HIFI := NO
CFG_CONFIG_HKADC := YES
CFG_CONFIG_ONOFF := YES
CFG_CONFIG_TUNER := NO
CFG_CONFIG_CROSS_MIPI := YES
CFG_CONFIG_HW_SPINLOCK := YES
CFG_CONFIG_BBP := YES
CFG_BSP_CONFIG_BBP_V3650 := NO
CFG_FEATURE_WIFI_ON := NO
CFG_FEATURE_BCM_VERSION := 43241
CFG_CONFIG_NVIM := YES
CFG_CONFIG_SC := YES
CFG_FEATURE_NV_PARTRION_MULTIPLEX               := FEATURE_OFF
CFG_FEATURE_NV_FLASH_ON := NO
CFG_FEATURE_NV_EMMC_ON  := YES
CFG_FEATURE_NV_LFILE_ON := NO
CFG_FEATURE_NV_RFILE_ON := NO
CFG_CONFIG_MULTI_CARRIER :=NO
CFG_FEATURE_UPGRADE_TL := YES
CFG_FEATURE_TLPHY_MAILBOX :=YES
CFG_CONFIG_WATCHPOINT := YES
CFG_CONFIG_MAILBOX_TYPE:=YES
CFG_CONFIG_HIFI_MAILBOX:=NO
CFG_CONFIG_PA_RF := NO
CFG_FEATURE_CPHY_MAILBOX     := YES
CFG_CONFIG_RFFE_MIPI := YES
CFG_CONFIG_RFFE_ANTEN := YES
CFG_CONFIG_RFFE_POWER := YES
CFG_CONFIG_PASTAR := NO
CFG_CONFIG_PASTAR_DPM_M3 := NO
CFG_CONFIG_MIPI := YES
CFG_MODEM_MEM_REPAIR := NO
CFG_CONFIG_DFS_DDR := YES
CFG_ENABLE_SHELL_SYM :=YES
CFG_ENABLE_DEBUG :=YES
CFG_RTOSCK_CCORE_COMPONENTS :=bsp_ccore.o gumsp_mcore.o nas_ccore.o rabm_ccore.o gas_ccore.o was_ccore.o ttf_ccore.o ascomm_ccore.o pscomm_ccore.o encodix_ccore.o taf_ccore.o tlas_ccore.o tlnas_ccore.o lmsp_ccore.o gudsp_mcore.o gudsp_comm_RT.o gudsp_mcore_RT.o
CFG_CCORE_COMPONENTS :=bsp_ccore.o gumsp_mcore.o nas_ccore.o rabm_ccore.o gas_ccore.o was_ccore.o ttf_ccore.o ascomm_ccore.o pscomm_ccore.o encodix_ccore.o taf_ccore.o tlas_ccore.o tlnas_ccore.o lmsp_ccore.o gudsp_mcore.o gudsp_comm_RT.o gudsp_mcore_RT.o os_ccore.o
CFG_CCORE_MODEM1_COMPONENTS :=bsp_ccore1.o nas1_ccore.o rabm1_ccore.o gas1_ccore.o taf1_ccore.o ascomm1_ccore.o pscomm1_ccore.o encodix1_ccore.o gumsp1_mcore.o gudsp1_mcore.o gudsp1_mcore_RT.o ttf1_ccore.o
CFG_CCORE_MODEMUNION_COMPONENTS :=modemcore1_union.o
CFG_BUILD_DRV_ONLY          := NO
CFG_ENABLE_TEST_CODE := NO
CFG_ENABLE_BUILD_VARS := YES
CFG_ENABLE_BUILD_OM := YES
CFG_ENABLE_BUILD_SYSVIEW := NO
CFG_ENABLE_BUILD_CPUVIEW := NO
CFG_ENABLE_BUILD_MEMVIEW := NO
CFG_ENABLE_BUILD_AMON_SOC := NO
CFG_ENABLE_BUILD_AMON_MDM := YES
CFG_ENABLE_BUILD_UTRACE := NO
CFG_CONFIG_CORESIGHT := YES
CFG_CONFIG_ETB := YES
CFG_ENABLE_BUILD_SOCP := YES
CFG_FEATURE_HDS_PRINTLOG := FEATURE_ON
CFG_FEATURE_HDS_TRANSLOG := FEATURE_ON
CFG_FEATURE_SRE_PRINT_SLICE := FEATURE_ON
CFG_FEATURE_SRE_PRINT_RTC := FEATURE_OFF
CFG_CONFIG_NOC := NO
CFG_CONFIG_PDLOCK := YES
CFG_CONFIG_DSPDVS := NO
CFG_FEATURE_DSP_PM_SEPARATE_MODE     := FEATURE_OFF
CFG_CONFIG_CCORE_CPU_IDLE := YES
CFG_CONFIG_BSP_TEST_CCORE := NO
CFG_CONFIG_BALONG_CCLK := YES
CFG_FEATURE_E5_ONOFF := NO
CFG_CONFIG_CCORE_PM := YES
CFG_CONFIG_MODULE_IPC := YES
CFG_CONFIG_MODULE_TIMER := YES
CFG_CONFIG_MODULE_SYNC := YES
CFG_CONFIG_IPC_MSG := YES
CFG_CONFIG_RSE := NO
CFG_CONFIG_LEDS_CCORE := NO
CFG_CONFIG_HAS_CCORE_WAKELOCK := YES
CFG_CONFIG_CCORE_BALONG_PM := YES
CFG_CONFIG_BALONG_EDMA := YES
CFG_CONFIG_BALONG_EDMA_TEST := NO
CFG_CONFIG_DUAL_MODEM := NO
CFG_CONFIG_I2C_TEST	:= NO
CFG_CONFIG_IPF_VESION  := 1
CFG_CONFIG_IPF_ADQ_LEN := 2
CFG_CONFIG_IPF_PROPERTY_MBB := NO
CFG_CONFIG_FB_SPI_BALONG := NO
CFG_CONFIG_FB_EMI_BALONG := NO
CFG_CONFIG_FB_1_4_5_INCH_BALONG:=NO
CFG_CONFIG_FB_2_4_INCH_BALONG:=NO
CFG_CONFIG_SLIC := n
CFG_CONFIG_WM8990 := NO
CFG_CONFIG_GPIO_EXPANDER := NO
CFG_CONFIG_TEMPERATURE_PROTECT := YES
CFG_CONFIG_MODEM_PINTRL := YES
CFG_CONFIG_EFUSE := YES
CFG_CONFIG_BURN_EFUSE_NANDC := NO
CFG_CONFIG_DDM := YES
CFG_CONFIG_TSENSOR := NO
CFG_CONFIG_DESIGNWARE_I2C := NO
CFG_CONFIG_USB_DWC3_VBUS_DISCONNECT:=NO
CFG_USB3_SYNOPSYS_PHY:=NO
CFG_CONFIG_USB_FORCE_HIGHSPEED:=NO
CFG_CONFIG_PWC_MNTN_CCORE := NO
CFG_CONFIG_TCXO_BALONG := NO
CFG_FEATURE_SCI_PROTOL_T1               := FEATURE_OFF
CFG_FEATURE_SET_SIM_IO_VOLT_MOD			:= FEATURE_ON
CFG_FEATURE_SCI_CHR_IND_REDUCE 			:= FEATURE_OFF
CFG_CONFIG_CCORE_I2C := NO
CFG_CONFIG_BALONG_MODEM_RESET := YES
CFG_CONFIG_HIFI_RESET := NO
CFG_CONFIG_BALONG_HPM_TEMP := NO
CFG_CONFIG_ARM_ENABLE_DTS := NO
CFG_DTS_NAME := v711
CFG_CONFIG_HWADP := YES
CFG_CONFIG_SYSCTRL := YES
CFG_CONFIG_SYSCTRL_TEST := NO
CFG_CONFIG_S_MEMORY := YES
CFG_CONFIG_S_MEMORY_TEST := NO
CFG_CONFIG_M2M_HSUART := NO
CFG_FEATURE_STICK								:= FEATURE_OFF
CFG_FEATURE_HILINK                              := FEATURE_OFF
CFG_FEATURE_SOCP_DECODE_INT_TIMEOUT             := FEATURE_OFF
CFG_FEATURE_SOCP_ON_DEMAND                      := FEATURE_OFF
CFG_FEATURE_DELAY_MODEM_INIT                    := FEATURE_ON
CFG_FEATURE_SOCP_AUTO_FREQUENCE                 := FEATURE_ON
CFG_FEATURE_HISOCKET                            := FEATURE_OFF
CFG_FEATURE_SOCP_MEM_RESERVED			        := FEATURE_OFF
CFG_FEATURE_DSP_DFS                             := FEATURE_OFF
CFG_FEATURE_BASTET                              := FEATURE_ON
CFG_FEATURE_MERGE_OM_CHAN						:= FEATURE_ON
CFG_FEATURE_SOCP_CHANNEL_REDUCE                 := FEATURE_OFF
CFG_FEATURE_SAMPLE_LTE_CHAN 			:= FEATURE_OFF
CFG_FEATURE_MULTI_CHANNEL			:= FEATURE_OFF
CFG_FEATURE_BSP_LCH_OM                       := FEATURE_ON
CFG_FEATURE_IMS                                 := FEATURE_ON
CFG_FEATURE_DFS_SYNC							:= FEATURE_OFF
CFG_FEATURE_TLPHY_SINGLE_XO								:= YES
CFG_XTENSA_CORE_X_CACHE     :=v8r5_dallas_cbbe16
CFG_LD_MAP_PATH             :=hi6250-cphy-asic-bbe16-lsp_DallasSFt
CFG_XTENSA_CORE_X_SYSTEM    := RD-2012.5
CFG_XTENSA_CORE				:=v8r5_dallas_bbe16
CFG_XTENSA_SYSTEM			:=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/builds/RD-2012.5-linux/$(CFG_XTENSA_CORE)/config
CFG_TENSILICA_BUILDS	    :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/builds/RD-2012.5-linux
CFG_TENSILICA_TOOLS	        :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/tools/RD-2012.5-linux
CFG_TENSILICA_BUILDS_HIFI   :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/builds/RD-2012.5-linux
CFG_TENSILICA_TOOLS_HIFI    :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/tools/RD-2012.5-linux
LPHY_LD_MAP_PUB_PATH        :=modem/phy/lt/Tensilica_LSP/BBE16_V850_LSP/pub_lsp
LPHY_LD_MAP_LTE_PATH        :=modem/phy/lt/Tensilica_LSP/BBE16_V850_LSP/lte_lsp
LPHY_LD_MAP_TDS_PATH        :=modem/phy/lt/Tensilica_LSP/BBE16_V850_LSP/tds_lsp
LPHY_LD_SDR_LIB_FILE        :=BBE16_V8R5_O2
LPHY_XTENSA_RULES           :=cc_tensilica5.0.5_rules.mk
CFG_LPHY_PUB_DTCM_BASE	    :=0x72700000
CFG_LPHY_PUB_ITCM_BASE	    :=0x72800000
CFG_LPHY_PRV_DTCM_BASE	    :=0x7275E000
CFG_LPHY_PRV_ITCM_BASE	    :=0x7285C800
CFG_LPHY_PUB_DTCM_SIZE		:=0x5E000
CFG_LPHY_PUB_ITCM_SIZE		:=0x5C800
CFG_LPHY_PRV_DTCM_SIZE		:=0x52000
CFG_LPHY_PRV_ITCM_SIZE		:=0x53800
CFG_LPHY_LTE_DTCM_SIZE		:=0x52000
CFG_LPHY_LTE_ITCM_SIZE		:=0x53800
CFG_LPHY_TDS_DTCM_SIZE		:=0x30000
CFG_LPHY_TDS_ITCM_SIZE		:=0x38000
CFG_LPHY_TOTAL_IMG_SIZE                :=((LPHY_PUB_DTCM_SIZE) + (LPHY_PUB_ITCM_SIZE) + (LPHY_LTE_DTCM_SIZE) * 2 + (LPHY_LTE_ITCM_SIZE) * 2 + (LPHY_TDS_DTCM_SIZE) + (LPHY_TDS_ITCM_SIZE))
CFG_CPHY_PUB_DTCM_BASE	    :=0x72900000
CFG_CPHY_PUB_ITCM_BASE	    :=0x72980000
CFG_CPHY_PRV_DTCM_BASE	    :=0x72900000
CFG_CPHY_PRV_ITCM_BASE	    :=0x72980000
CFG_CPHY_PUB_DTCM_SIZE		:=0x60000
CFG_CPHY_PUB_ITCM_SIZE		:=0x60000
CFG_CPHY_PRV_DTCM_SIZE		:=0x60000
CFG_CPHY_PRV_ITCM_SIZE		:=0x60000
CFG_CPHY_PUB_DTCM_GLB_MINUS_LOCAL	    :=(0xE2900000 - 0x72900000)
CFG_TL_PHY_ASIC_V850    	:= YES
CFG_TL_PHY_BBE16_CACHE          := NO
CFG_TL_PHY_FEATURE_LTE_LCS  := NO
CFG_LPHY_SFT := NO
CFG_TL_PHY_SUPPORT_IMAGE_HEADER := NO
CFG_FEATURE_LPHY_RFIC_HI6362                    := FEATURE_ON
CFG_GU_INC_PATH :=COMM_CODE_GU/Balong_GU_Inc/GUL_CS
CFG_GU_PRODUCT_VERSION :=VERSION_V7R1
CFG_RAT_GU:=0
CFG_RAT_GUL:=1
CFG_RAT_MODE :=RAT_GUL
CFG_GU_RAT_MODE :=RAT_GUL
CFG_PLATFORM_HISI_BALONG :=hi6250
CFG_TTF_SKB_EXP := NO
CFG_GU_FEATURE_CONFIG_PATH :=config/product/hi6250_udp/include_gu
CFG_TL_PS_MAX_TRCH_NUM_8    := YES
CFG_MEMORY_SIZE_32M                             := 1
CFG_MEMORY_SIZE_64M                             := 2
CFG_MEMORY_SIZE_128M                            := 3
CFG_MEMORY_SIZE_256M                            := 4
CFG_MEMORY_SIZE_512M                            := 5
CFG_PS_PTL_VER_DANAMIC                          := 20
CFG_PS_PTL_VER_PRE_R99                          := (-2)
CFG_PS_PTL_VER_R99                              := (-1)
CFG_PS_PTL_VER_R3                               := 0
CFG_PS_PTL_VER_R4                               := 1
CFG_PS_PTL_VER_R5                               := 2
CFG_PS_PTL_VER_R6                               := 3
CFG_PS_PTL_VER_R7                               := 4
CFG_PS_PTL_VER_R8                               := 5
CFG_PS_PTL_VER_R9                               := 6
CFG_PS_UE_REL_VER                               := PS_PTL_VER_R9
CFG_FEATURE_UE_MODE_G                           := FEATURE_ON
CFG_FEATURE_UE_MODE_W                           := FEATURE_ON
CFG_FEATURE_GCBS                                := FEATURE_ON
CFG_FEATURE_WCBS                                := FEATURE_ON
CFG_FEATURE_AP                                  := FEATURE_OFF
CFG_FEATURE_PTABLE_UDP                          := FEATURE_ON
CFG_FEATURE_E5                                  := FEATURE_OFF
CFG_FEATURE_E5_UDP                              := FEATURE_OFF
CFG_FEATURE_SEC_BOOT                            := FEATURE_OFF
CFG_FEATURE_CSD                                 := FEATURE_OFF
CFG_FEATURE_PPP                                 := FEATURE_ON
CFG_FEATURE_HARDWARE_HDLC_FUNC                  := FEATURE_OFF
CFG_FEATURE_HARDWARE_HDLC_ON_CCPU               := FEATURE_ON
CFG_FEATURE_PPPOE                               := FEATURE_OFF
CFG_FEATURE_UPDATEONLINE                        := FEATURE_OFF
CFG_FEATURE_WIFI                                := FEATURE_OFF
CFG_FEATURE_HIFI                                := FEATURE_ON
CFG_FEATURE_HIFI_USE_ICC                        := FEATURE_ON
CFG_FEATURE_MBB_MODULE_AUDIO                    := FEATURE_OFF
CFG_FEATURE_SDIO                                := FEATURE_OFF
CFG_FEATURE_KEYBOARD                            := FEATURE_OFF
CFG_FEATURE_CHARGE                              := FEATURE_OFF
CFG_FEATURE_ICC_DEBUG                           := FEATURE_ON
CFG_FEATURE_POWER_ON_OFF                        := FEATURE_OFF
CFG_FEATURE_OLED                                := FEATURE_OFF
CFG_FEATURE_TFT                                 := FEATURE_OFF
CFG_FEATURE_MMI_TEST                            := FEATURE_OFF
CFG_FEATURE_DL_E_CELL_FACH                      := FEATURE_ON
CFG_FEATURE_INTERPEAK                           := FEATURE_OFF
CFG_FEATURE_INTERPEAK_MINI                      := FEATURE_OFF
CFG_IPWEBS_FEATURE_E5                           := FEATURE_OFF
CFG_IPWEBS_FEATURE_WIRELESS_DONGLE              := FEATURE_OFF
CFG_IPWEBS_FEATURE_LIGHTNING_CARD               := FEATURE_OFF
CFG_FEATURE_WEBNAS                              := FEATURE_OFF
CFG_FEATURE_WIRELESS_DONGLE                     := FEATURE_OFF
CFG_FEATURE_PMU_PROTECT                         := FEATURE_OFF
CFG_FEATURE_VXWORKS_TCPIP                       := FEATURE_OFF
CFG_FEATURE_MEMORY_SIZE                         := MEMORY_SIZE_64M
CFG_FEATURE_ECM_RNDIS                           := FEATURE_OFF
CFG_FEATURE_RNIC                                := FEATURE_OFF
CFG_FEATURE_NFEXT                               := FEATURE_ON
CFG_FEATURE_UL_E_CELL_FACH                      := FEATURE_ON
CFG_FEATURE_BREATH_LIGHT                        := FEATURE_OFF
CFG_FEATURE_LEDSTATUS                           := FEATURE_OFF
CFG_FEATURE_E5_LED                              := FEATURE_OFF
CFG_FEATURE_RTC                                 := FEATURE_OFF
CFG_FEATURE_SMALL_MAILBOX                       := FEATURE_OFF
CFG_FEATURE_RECONFIG                            := FEATURE_ON
CFG_FEATURE_HWENCRY_REWORK                      := FEATURE_OFF
CFG_FEATURE_MMU_BIG                             := FEATURE_OFF
CFG_FEATURE_MMU_MEDIUM                          := FEATURE_ON
CFG_FEATURE_MMU_SMALL                           := FEATURE_OFF
CFG_FEATURE_TTFMEM_CACHE                        := FEATURE_OFF
CFG_FEATURE_SDUPDATE                            := FEATURE_OFF
CFG_FEATURE_SECURITY_SHELL          			:= FEATURE_ON
CFG_FEATURE_EPAD                                := FEATURE_OFF
CFG_FEATURE_HSIC_SLAVE                          := FEATURE_OFF
CFG_FEATURE_MEM_MONITOR                         := FEATURE_ON
CFG_FEATURE_DRV_REPLAY_DUMP						:= FEATURE_OFF
CFG_FEATURE_SKB_EXP                             := FEATURE_OFF
CFG_FEATURE_MULTI_FS_PARTITION                  := FEATURE_ON
CFG_CONFIG_HISI_PTM                             := FEATURE_OFF
CFG_NAS_FEATURE_SMS_NVIM_SMSEXIST                       := FEATURE_ON
CFG_NAS_FEATURE_SMS_FLASH_SMSEXIST                      := FEATURE_ON
CFG_FEATURE_UE_MODE_G                           := FEATURE_ON
CFG_FEATURE_UE_MODE_W                           := FEATURE_ON
CFG_FEATURE_LTE                                 := FEATURE_ON
CFG_FEATURE_UE_MODE_TDS                         := FEATURE_ON
CFG_FEATURE_ETWS                                := FEATURE_ON
CFG_FEATURE_AGPS                                := FEATURE_ON
CFG_FEATRUE_XML_PARSER                          := FEATURE_ON
CFG_FEATURE_PTM                                 := FEATURE_ON
CFG_FEATURE_UE_UICC_MULTI_APP_SUPPORT           := FEATURE_ON
CFG_FEATURE_VCOM_EXT                            := FEATURE_ON
CFG_FEATURE_IPV6                                := FEATURE_ON
CFG_FEATURE_RMNET_CUSTOM                        := FEATURE_OFF
CFG_FEATURE_PROBE_FREQLOCK                      := FEATURE_OFF
CFG_FEATURE_AT_HSIC                             := FEATURE_OFF
CFG_FEATURE_AT_HSUART                           := FEATURE_OFF
CFG_FEATURE_HUAWEI_VP                           := FEATURE_OFF
CFG_FEATURE_CL_INTERWORK                        := FEATURE_OFF
CFG_FEATURE_MULTI_MODEM                         := FEATURE_ON
CFG_MULTI_MODEM_NUMBER                          := 2
CFG_FEATURE_ECALL                               := FEATURE_OFF
CFG_GAS_PTL_VER_PRE_R99             := (PS_PTL_VER_PRE_R99)
CFG_GAS_PTL_VER_R99                 := (PS_PTL_VER_R99)
CFG_GAS_PTL_VER_R3                  := (PS_PTL_VER_R3)
CFG_GAS_PTL_VER_R4                  := (PS_PTL_VER_R4)
CFG_GAS_PTL_VER_R5                  := (PS_PTL_VER_R5)
CFG_GAS_PTL_VER_R6                  := (PS_PTL_VER_R6)
CFG_GAS_PTL_VER_R7                  := (PS_PTL_VER_R7)
CFG_GAS_PTL_VER_R8                  := (PS_PTL_VER_R8)
CFG_GAS_PTL_VER_R9                  := (PS_PTL_VER_R9)
CFG_GAS_UE_REL_VER                  := (GAS_PTL_VER_R9)
CFG_FEATURE_DC_MIMO                             := FEATURE_OFF
CFG_FEATURE_DC_UPA                              := FEATURE_OFF
CFG_FEATURE_MODEM1_SUPPORT_WCDMA                := FEATURE_OFF
CFG_FEATURE_VISP_VPP                            := FEATURE_ON
CFG_VISP_IMS_NIC_CNT                            := 1
CFG_FEATURE_BBPMST_FREQUENCY_REDUCE             := FEATURE_OFF
CFG_TTF_CF_FEATURE                              := FEATURE_OFF
CFG_FEATURE_TTF_MEM_DEBUG                       := FEATURE_ON
CFG_FEATURE_W_R99_DL_DUAL_MAILBOX               := FEATURE_ON
CFG_FEATURE_ASSEMBLY_MEM_CPY                    := FEATURE_ON
CFG_FEATURE_HSPA_PERF_IMP                       := FEATURE_ON
CFG_FEATURE_RACH_NO_ACK_DEBUG                   := FEATURE_OFF
CFG_FEATURE_TCP_ACK_IN_FRONT                    := FEATURE_ON
CFG_FEATURE_CST_ASYN_OR_NOT_TRANS               := FEATURE_OFF
CFG_FEATURE_ACPU_STAT                           := FEATURE_OFF
CFG_FEATURE_ACPU_FC_POINT_REG                   := FEATURE_ON
CFG_SC_CTRL_MOD_P532                            := 1
CFG_SC_CTRL_MOD_M533                            := 2
CFG_SC_CTRL_MOD_M535                            := 3
CFG_SC_CTRL_MOD_3650_SFT                        := 4
CFG_SC_CTRL_MOD_6250_SFT                        := 5
CFG_SC_CTRL_MOD_6932_SFT                        := 6
CFG_SC_CTRL_MOD_3660_SFT                        := 7
CFG_SC_CTRL_MOD_KIRIN970_SFT                    := 8
CFG_SC_CTRL_MOD_KIRIN660_SFT                    := 9
CFG_SC_CTRL_MOD                                 := (SC_CTRL_MOD_6250_SFT)
CFG_ZSP_DSP_CHIP_BB_TYPE		        :=10
CFG_ZSP_DSP_PRODUCT_FORM		        :=4
CFG_BOARD   := ASIC
CFG_FEATURE_DC_DPA			:= FEATURE_ON
CFG_FEATURE_DC_UPA                      := FEATURE_OFF
CFG_FEATURE_DC_MIMO                     := FEATURE_OFF
CFG_FEATURE_HARQ_OUT                    := FEATURE_ON
CFG_FEATURE_RFIC_RESET_GPIO_ON	        := FEATURE_OFF
CFG_FEATURE_EXTERNAL_32K_CLK		:= FEATURE_OFF
CFG_FEATURE_UPHY_SIO_WPLL_ELUSION_ON    := FEATURE_OFF
CFG_FEATURE_MULTI_RFIC_MEAS	        := FEATURE_ON
CFG_FEATURE_SRAM_400K                   := FEATURE_OFF
CFG_FEATURE_TEMP_DSP_CORE_POWER_DOWN    := FEATURE_OFF
CFG_FEATURE_TEMP_MULTI_MODE_LP          := FEATURE_ON
CFG_FEATURE_TUNER                       := FEATURE_OFF
CFG_FEATURE_ANT_SHARE                   := FEATURE_ON
CFG_FEATURE_VIRTUAL_BAND                := FEATURE_ON
CFG_FEATURE_HI6363                		:= FEATURE_OFF
CFG_FEATURE_GU_DSP_SPLIT                := FEATURE_ON
CFG_FEATURE_TAS                         := FEATURE_ON
CFG_FEATURE_DSDS                        := FEATURE_ON
CFG_FEATURE_S_SKU_M_OPERATORS                   := FEATURE_OFF
CFG_FEATURE_BROWSER_NV_FILE_IMEI_PROTECT        := FEATURE_OFF
CFG_FEATURE_PHONE_SC                            := FEATURE_ON
ifeq ($(SECDOG_SUPPORT_RSA_2048),FEATURE_ON)
CFG_FEATURE_SC_SEC_UPDATE               := FEATURE_ON
else
CFG_FEATURE_SC_SEC_UPDATE               := FEATURE_OFF
endif
CFG_FEATURE_SC_OS_SEC_FILE                      := FEATURE_OFF
ifeq ($(FEATURE_OTA_NETLOCK),FEATURE_ON)
CFG_FEATURE_SC_NETWORK_UPDATE              := FEATURE_ON
else
CFG_FEATURE_SC_NETWORK_UPDATE              := FEATURE_OFF
endif
ifeq ($(FEATURE_SIMLOCK_CUST),FEATURE_ON)
CFG_FEATURE_SC_DATA_STRUCT_EXTERN             := FEATURE_ON
else
CFG_FEATURE_SC_DATA_STRUCT_EXTERN             := FEATURE_OFF
endif
CFG_BBP_MASTER_NONE                             := 0
CFG_BBP_MASTER_V8R1                             := 1
CFG_BBP_MASTER_V7R5                             := 2
CFG_BBP_MASTER_V8R5                             := 3
CFG_BBP_MASTER_K3V6                             := 4
CFG_BBP_MASTER_KIRIN970                         := 5
CFG_BBP_MASTER_KIRIN660                         := 6
CFG_FEATURE_BBP_MASTER_VER                      := (BBP_MASTER_V8R5)
CFG_FEATURE_VOICE_UP 					:= FEATURE_OFF
CFG_FEATURE_GUC_BBP_TRIG                        := FEATURE_ON
CFG_FEATURE_GUC_BBP_TRIG_NEWVERSION             := FEATURE_OFF
CFG_FEATURE_GUBBP_HANDSHAKE                     := FEATURE_ON
CFG_FEATURE_POWER_TIMER                         := FEATURE_ON
CFG_FEATURE_GUDRX_NEWVERSION                    := FEATURE_OFF
CFG_FEATURE_RTC_TIMER_DBG                       := FEATURE_ON
CFG_FEATURE_BOSTON_AFTER_FEATURE                := FEATURE_OFF
CFG_FEATURE_LTE_R11                        := FEATURE_ON
CFG_FEATURE_LTE_MBMS                       := FEATURE_OFF
CFG_FEATURE_LPP                                 := FEATURE_ON
CFG_FEATURE_VSIM                                := FEATURE_ON
CFG_FEATURE_VSIM_ICC_SEC_CHANNEL                := FEATURE_OFF
CFG_FEATURE_VOS_REDUCE_MEM_CFG                  := FEATURE_OFF
CFG_FEATURE_MANUFACTURE_LOG                     := FEATURE_OFF
CFG_FEATURE_BALONG_CL                      := FEATURE_UE_MODE_CDMA
CFG_FEATURE_UE_MODE_CDMA                        := FEATURE_ON
CFG_FEATURE_CHINA_TELECOM_VOICE_ENCRYPT         := FEATURE_ON
CFG_FEATURE_CHINA_TELECOM_VOICE_ENCRYPT_TEST_MODE := FEATURE_OFF
CFG_FEATURE_RTT_TEST                            := FEATURE_ON
CFG_FEATURE_RTT_RANDOM_TEST                     := FEATURE_OFF
CFG_FEATURE_GUTLC_ONE_DSP               := FEATURE_OFF
CFG_FEATURE_NX_CORE_OPEN                := FEATURE_OFF
CFG_FEATURE_CSDR                        := FEATURE_ON
CFG_FEATURE_GSM_SDR				:= FEATURE_OFF
CFG_FEATURE_GSM_SDR_DAIC			:= FEATURE_OFF
CFG_FEATURE_XBBE16_NEW_MAIL			:= FEATURE_OFF
CFG_FEATURE_TDS_WCDMA_DYNAMIC_LOAD         := FEATURE_ON
CFG_FEATURE_DCX0_TLHPA_WRITE_PHY_NV        := FEATURE_ON
CFG_FEATURE_CSG                            := FEATURE_ON
CFG_FEATURE_CSS_CLOUD_MEMORY_IMPROVE           := FEATURE_ON
CFG_FEATURE_TLPHY_ET                    := FEATURE_OFF
CFG_FEATURE_TLPHY_DPD                   := FEATURE_ON
CFG_FEATURE_DX_SECBOOT                  := FEATURE_OFF
CFG_FEATURE_DATA_RETRY                            := FEATURE_ON
CFG_FEATURE_LTE_R13                          := FEATURE_OFF
CFG_FEATURE_M2M                            := FEATURE_ON
CFG_FEATURE_CSS_RAT_RECOGNIZE                      := FEATURE_OFF
CFG_FEATURE_TLPHY_BODYSAR                          := FEATURE_ON
CFG_TLPHY_MIPI_APT                                   := FEATURE_ON
CFG_FEATURE_MODEM1_SUPPORT_LTE                := FEATURE_OFF
CFG_FEATURE_MEM_DECREASE                := FEATURE_OFF
CFG_FEATURE_EDA_SUPPORT                 := FEATURE_ON
CFG_FEATURE_CSS_DSDS_START_BGS                      := FEATURE_ON
CFG_FEATURE_KIRIN970_ES_VERSION                := FEATURE_OFF
CFG_FEATURE_RNIC_NAPI_GRO                      := FEATURE_OFF
