#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Device Path
DEVICE_PATH := device/xiaomi/jasmine_sprout

# Inherit from wayne-common
$(call inherit-product, device/xiaomi/wayne-common/wayne.mk)

# A/B
ENABLE_AB := true

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    device/xiaomi/jasmine_sprout/overlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Init
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.verity.rc

# Verity
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/bootdevice/by-name/system
PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/bootdevice/by-name/vendor
$(call inherit-product, build/target/product/verity.mk)

# Wifi
PRODUCT_PACKAGES += \
    JasmineWifiOverlay

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/jasmine_sprout/jasmine_sprout-vendor.mk)
