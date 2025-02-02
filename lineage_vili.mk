#
# Copyright (C) 2022 The LineageOS Project
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
    BuildDesc="vili-user 14 UKQ1.231207.002 V816.0.4.0.UKDEUXM release-keys" \
    BuildFingerprint=Xiaomi/vili/vili:14/UKQ1.231207.002/V816.0.4.0.UKDEUXM:user/release-keys \
    DeviceName=vili \
    DeviceProduct=vili \
    SystemDevice=vili \
    SystemName=vili

# Rom Specific Flags
WITH_GMS := true
TARGET_INCLUDE_NEXUS := true
