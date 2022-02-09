DEVICE_TREE := device/meizu/m5c

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mt6737m

# Platform
TARGET_BOARD_PLATFORM := mt6737m

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

BOARD_KERNEL_IMAGE_NAME := kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_TREE)/kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_FLASH_BLOCK_SIZE := 131072


# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# TWRP-Specific
TW_THEME := portrait_hdpi
TW_EXCLUDE_SUPERSU := true
TW_NO_SCREEN_TIMEOUT := true
# Asian region languages
TW_EXTRA_LANGUAGES := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 120		
TW_INCLUDE_FB2PNG := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_NO_CPU_TEMP := true

TW_USE_TOOLBOX := true
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TARGET_USERIMAGES_USE_EXT4 := true

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

TW_HAVE_SELINUX := true
TW_DEFAULT_LANGUAGE := en
TW_HAS_MTP := true
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered"

PRODUCT_COPY_FILES += $(DEVICE_TREE)/twrp.fstab:recovery/root/etc/twrp.fstab
PRODUCT_COPY_FILES += $(DEVICE_TREE)/recovery.fstab:recovery/root/etc/recovery.fstab
PRODUCT_COPY_FILES += $(DEVICE_TREE)/fstab.mt6735:recovery/root/etc/fstab.mt6735
