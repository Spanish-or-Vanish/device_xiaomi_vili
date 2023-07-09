#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/vili
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := vili

# Board
TARGET_BOOTLOADER_BOARD_NAME := vili

# Firmware
-include vendor/xiaomi/vili-firmware/BoardConfigVendor.mk

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/hidl/manifest.xml
ODM_MANIFEST_SKUS := \
    vili \
    vilijp

NFC_ESE_MANIFEST := $(DEVICE_PATH)/hidl/nfc_ese.xml

ODM_MANIFEST_VILI_FILES := $(NFC_ESE_MANIFEST)
ODM_MANIFEST_VILIJP_FILES := $(NFC_ESE_MANIFEST)

# Kernel
TARGET_KERNEL_CONFIG += vendor/vili_QGKI.config

# Kernel modules
BOOT_KERNEL_MODULES := \
    adsp_loader_dlkm.ko \
    apr_dlkm.ko \
    fts_touch_spi.ko \
    hwid.ko \
    mmhardware_sysfs_dlkm.ko \
    msm_drm.ko \
    q6_notifier_dlkm.ko \
    q6_pdr_dlkm.ko \
    qti_battery_charger_main.ko \
    snd_event_dlkm.ko \
    xiaomi_touch.ko

BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# MiuiCamera
-include device/xiaomi/miuicamera-vili/BoardConfig.mk

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Vibrator
SOONG_CONFIG_xiaomiSm8350Vars_vibrator_use_effect_stream := true

# Include proprietary files
include vendor/xiaomi/vili/BoardConfigVendor.mk
