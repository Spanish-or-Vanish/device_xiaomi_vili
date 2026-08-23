#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vili device
$(call inherit-product, device/xiaomi/vili/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := vili
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2107113SG
PRODUCT_NAME := lineage_vili

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="vili-user 14 UKQ1.231207.002 V816.0.22.0.UKDMIXM release-keys" \
    BuildFingerprint=Xiaomi/vili/vili:14/UKQ1.231207.002/V816.0.22.0.UKDMIXM:user/release-keys

# Flags
TARGET_INCLUDES_CUSTOM_VOLUMES := true
TARGET_INCLUDES_DOLBY := true
TARGET_INCLUDES_ViperFX := true
TARGET_INCLUDES_OEM_App := true
TARGET_INCLUDES_DolbyVision := true
TARGET_INCLUDES_SWDOLBY := true
TARGET_INCLUDES_Custom_Thermal := true
TARGET_INCLUDES_HIGH_TOUCH_POLLING := true
TARGET_INCLUDES_Lineage_Health := true
TARGET_INCLUDES_Torch_Light_Control := true
TARGET_INCLUDES_Webcam := true

