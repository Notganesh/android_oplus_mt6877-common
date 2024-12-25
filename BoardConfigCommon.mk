#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oplus/mt6877-common

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76

# Bootloader
TARGET_BOARD_PLATFORM := mt6877
TARGET_BOOTLOADER_BOARD_NAME := k6877v1_64_k419
TARGET_NO_BOOTLOADER := true
BOARD_HAS_MTK_HARDWARE := true

# Build system
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true
BUILD_BROKEN_INCORRECT_PARTITION_IMAGES := true

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

BOARD_AVB_VBMETA_SYSTEM := product system system_ext
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := 1
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

BOARD_AVB_VBMETA_VENDOR := odm vendor
BOARD_AVB_VBMETA_VENDOR_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX := 1
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX_LOCATION := 3

# Display
TARGET_SCREEN_DENSITY := 480

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    $(DEVICE_PATH)/configs/vintf/device_framework_matrix.xml

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x07c08000
BOARD_RAMDISK_OFFSET := 0x11088000
BOARD_KERNEL_SECOND_OFFSET := 0x00e88000
BOARD_DTB_OFFSET := 0x07c08000

BOARD_KERNEL_SEPARATED_DTBO := false
BOARD_BOOT_HEADER_VERSION := 2

BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
TARGET_KERNEL_CONFIG := lineage-ivan_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := r383902
TARGET_KERNEL_SOURCE := kernel/oplus/mt6877

BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)

# Power
TARGET_TAP_TO_WAKE_NODE := /proc/touchpanel/double_tap_enable

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_USERDATAIMAGE_PARTITION_SIZE := 115888586752
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 536870912
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 536870912
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 104857600
BOARD_ODMIMAGE_PARTITION_RESERVED_SIZE := 104857600
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 536870912

# File System Type
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_SYSTEM_EXT := system_ext

# Partitions (Dynamic)
BOARD_MAIN_SIZE := 10196353024
BOARD_MAIN_PARTITION_LIST := system system_ext vendor product odm
BOARD_SUPER_PARTITION_SIZE := 10200547328
BOARD_SUPER_PARTITION_GROUPS := main

# Manifest
DEVICE_MATRIX_FILE := $(COMMON_PATH)/configs/vintf/compatibility_matrix.xml
DEVICE_MANIFEST_FILE := $(COMMON_PATH)/configs/vintf/manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(COMMON_PATH)/configs/vintf/framework_compatibility_matrix.xml

# Metadata
BOARD_USES_METADATA_PARTITION := true
BOARD_ROOT_EXTRA_FOLDERS += metadata

# Properties
TARGET_VENDOR_PROP += $(COMMON_PATH)/configs/props/vendor.prop
TARGET_SYSTEM_PROP += $(COMMON_PATH)/configs/props/system.prop

# Recovery
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/fstab.mt6877
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 90

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS ?= $(COMMON_PATH)/releasetools

# Reserve space for gapps install
-include vendor/lineage/config/BoardConfigReservedSize.mk

# Ril
ENABLE_VENDOR_RIL_SERVICE := true

# Sepolicy
include device/mediatek/sepolicy_vndr/SEPolicy.mk
BOARD_SEPOLICY_DIRS  += $(COMMON_PATH)/sepolicy/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/public
SELINUX_IGNORE_NEVERALLOWS := true

# SPL
VENDOR_SECURITY_PATCH := 2023-03-05

# Touch
SOONG_CONFIG_NAMESPACES += OPLUS_LINEAGE_TOUCH_HAL
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL := INCLUDE_DIR
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL_INCLUDE_DIR := $(COMMON_PATH)/touch/include

# UDFPS
TARGET_SURFACEFLINGER_UDFPS_LIB := //hardware/oplus:libudfps_extension.oplus

# Vibrator
TARGET_VIBRATOR_SUPPORTS_EFFECTS := true

# Wi-Fi
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_STA:= STA
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true

# inherit from the proprietary version
include vendor/oplus/mt6877-common/BoardConfigVendor.mk