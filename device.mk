#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8350-common
$(call inherit-product, device/xiaomi/sm8350-common/common.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/mixer_paths.xml \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_dynamic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/mixer_paths_overlay_dynamic.xml \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_static.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/mixer_paths_overlay_static.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/sound_trigger_platform_info.xml

# Fingerprint
PRODUCT_PACKAGES += \
    vendor.xiaomi.hardware.fx.tunnel@1.0.vendor

# Camera
$(call soong_config_set,camera,override_format_from_reserved,true)

# Init
PRODUCT_PACKAGES += \
    init.xiaomi.goodixfp.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Overlays-RRO
PRODUCT_PACKAGES += \
    ViliSettingsProviderOverlay \
    ViliWifiOverlay

# Private keys
ifeq ($(TARGET_INCLUDES_keys),true)
-include vendor/lineage-priv/keys/keys.mk
endif

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Swiitchoff stuffs
$(call inherit-product-if-exists, swiitchoff/stuffs/config.mk)

# Thermal configs modified
# Unlocked 2.84 GHz in prime core
ifeq ($(TARGET_INCLUDES_Custom_Thermal),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-camera.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-camera.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-class0.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-class0.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-huanji.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-huanji.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-india-camera.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-camera.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-india-class0.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-class0.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-india-huanji.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-huanji.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-india-mgame.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-mgame.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-india-navigation.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-navigation.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-india-nolimits.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-nolimits.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-india-normal.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-normal.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-india-phone.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-phone.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-india-tgame.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-tgame.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-india-video.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-video.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-map-india.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-map-india.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-map.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-map.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-mgame.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-mgame.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-navigation.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-navigation.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-nolimits.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-nolimits.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-normal.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-normal.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-phone.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-phone.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-region-map.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-region-map.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-tgame.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-tgame.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermal-video.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-video.conf \
    $(LOCAL_PATH)/configs/thermal/custom/thermald-devices.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermald-devices.conf
else

# Thermal configs stock
# Locked 2.15 GHz in prime core
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-camera.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-camera.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-class0.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-class0.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-huanji.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-huanji.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-india-camera.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-camera.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-india-class0.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-class0.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-india-huanji.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-huanji.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-india-mgame.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-mgame.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-india-navigation.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-navigation.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-india-nolimits.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-nolimits.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-india-normal.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-normal.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-india-phone.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-phone.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-india-tgame.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-tgame.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-india-video.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-video.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-map-india.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-map-india.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-map.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-map.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-mgame.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-mgame.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-navigation.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-navigation.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-nolimits.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-nolimits.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-normal.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-normal.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-phone.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-phone.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-region-map.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-region-map.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-tgame.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-tgame.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermal-video.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-video.conf \
    $(LOCAL_PATH)/configs/thermal/stock/thermald-devices.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermald-devices.conf
endif

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/vili/vili-vendor.mk)
