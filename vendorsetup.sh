#!/bin/bash

# Kernel
git clone https://github.com/Notganesh/kernel_oneplus_ivan.git -b vooc kernel/oplus/mt6877

# Device Tree
git clone https://github.com/oplus-ivan-development/android_device_oplus_ivan.git device/oplus/ivan

# Vendor Tree - (Common & ivan)
git clone https://github.com/oplus-ivan-development/vendor_oplus_ivan.git vendor/oplus/ivan
git clone https://github.com/oplus-ivan-development/vendor_oplus_mt6877-common.git vendor/oplus/mt6877-common

# Hardware
git clone -b lineage-21 https://github.com/LineageOS/android_hardware_oplus.git hardware/oplus
git clone -b lineage-21 https://github.com/LineageOS/android_hardware_mediatek.git hardware/mediatek
git clone -b lineage-21 https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr.git device/mediatek/sepolicy_vndr

# clang
git clone --depth=1 https://github.com/oneplus-mediatek-dev/android_prebuilts_clang_host_linux-x86_clang-6443078.git -b 11.0.1 prebuilts/clang/host/linux-x86/clang-r383902

# Sepolicy
git clone -b lineage-21 https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr.git device/mediatek/sepolicy_vndr

# Wlan
git clone https://github.com/nashc-dev/android_hardware_mediatek_wlan.git hardware/mediatek/wlan

# Patches
bash device/oplus/mt6877-common/patches/apply.sh
