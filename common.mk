#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/oplus/mt6877-common

# Media
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(COMMON_PATH)/configs/media/media_codecs_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2.xml \
    $(COMMON_PATH)/configs/media/media_codecs_mediatek_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_audio.xml \
    $(COMMON_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(COMMON_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(COMMON_PATH)/configs/media/VideoLog_dynamic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/VideoLog_dynamic.xml

# Rootdir
PRODUCT_PACKAGES += \
    init.connectivity.common.rc \
    init.recovery.mt6877.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.oplus.rc \
    init.mt6877.rc \
    init.mt6877.usb.rc \
    init.mt6877.power.rc \
    init.project.rc \
    init.sensor_2_0.rc \
    init.target.rc \
    init_conninfra.rc \
    fstab.mt6877 \
    fstab.mt6877.ramdisk \
    ueventd.oplus.rc \
    ueventd.mtk.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/oplus/mt6877-common/mt6877-common-vendor.mk)