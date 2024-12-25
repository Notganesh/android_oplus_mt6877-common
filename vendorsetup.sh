#!/bin/bash

# Hardware
git clone -b lineage-21 https://github.com/LineageOS/android_hardware_oplus.git hardware/oplus
git clone -b lineage-21 https://github.com/LineageOS/android_hardware_mediatek.git hardware/mediatek

# Sepolicy
git clone -b lineage-21 https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr.git device/mediatek/sepolicy_vndr

#Wlan
git clone https://github.com/nashc-dev/android_hardware_mediatek_wlan.git hardware/mediatek/wlan