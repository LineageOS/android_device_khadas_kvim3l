#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/khadas/kvim3l

## Bluetooth
BOARD_HAVE_BLUETOOTH := true

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := kvim3l

## DTB
TARGET_DTB_NAME := kvim3l

## Kernel modules
TARGET_KERNEL_EXT_MODULES := \
    dhd-driver/bcmdhd.101.10.591.x

## Partitions
BOARD_SUPER_PARTITION_SIZE := 2084569088

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## Recovery
# Define the custom recovery UI static library
TARGET_RECOVERY_UI_LIB := librecovery_ui_kvim3l

# Ensure the module is built alongside recovery
TARGET_RECOVERY_DEVICE_MODULES += librecovery_ui_kvim3l

## Wi-Fi
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_STA := "/wifi/fw_bcm4359c0_ag.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WPA_SUPPLICANT_VERSION := VER_0_8_X

## Include the common tree BoardConfig makefile
include device/amlogic/g12-common/BoardConfigCommon.mk

<<<<<<< PATCH SET (a3039a37bd3affe37eafa6ec0f8850f23bf7165d kvim3l: Use khadas.config fragment)
=======
## Include the proprietary BoardConfig makefile
include vendor/khadas/kvim3l/BoardConfigVendor.mk

>>>>>>> BASE      (7af2befbc8ff993c9e2151703fac61ef61b8f913 kvim3l: Add custom recovery ui, to use hw keys)
## Kernel config fragments
# Must come after the common include, which assigns TARGET_KERNEL_CONFIG with :=
TARGET_KERNEL_CONFIG += khadas.config
