NEXMON_CHIP=CHIP_VER_BCM4335b0
NEXMON_CHIP_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_CHIP)`
NEXMON_FW_VERSION=FW_VER_6_30_171_1_sta
NEXMON_FW_VERSION_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_FW_VERSION)`

NEXMON_ARCH=armv7-r

RAM_FILE=bcmdhd_sta.bin
RAMSTART=0x180000
RAMSIZE=0xC0000

ROM_FILE=rom.bin
ROMSTART=0x0
ROMSIZE=0xA0000

HNDRTE_RECLAIM_0_END=0x2092F0

PATCHSIZE=0x4000
PATCHSTART=$$(($(HNDRTE_RECLAIM_0_END) - $(PATCHSIZE)))

# original ucode start and size
UCODESTART=0x1fd82c
UCODESIZE=0xb2e0

# original template ram start and size
TEMPLATERAMSTART=0x208B10
TEMPLATERAMSIZE=0x7E0

FP_DATA_END_PTR=0x1d9ae0
FP_CONFIG_BASE_PTR_1=0x1ec610
FP_CONFIG_END_PTR_1=0x1ec60c
FP_CONFIG_BASE_PTR_2=0x1ec8dc
FP_CONFIG_END_PTR_2=0x1ec8d8
FP_CONFIG_SIZE=0xc00
FP_CONFIG_BASE=$$(($(PATCHSTART) - $(FP_CONFIG_SIZE)))
FP_DATA_BASE=0x1D1800
FP_CONFIG_ORIGBASE=0x1d2000
FP_CONFIG_ORIGEND=0x1d2948
