#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from NX666J device
$(call inherit-product, device/nubia/NX666J/device.mk)

PRODUCT_DEVICE := NX666J
PRODUCT_NAME := twrp_NX666J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX666J
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX666J_EU-user 12 RKQ1.201221.002 20221101.142009 release-keys"

BUILD_FINGERPRINT := nubia/NX666J_EU/NX666J:12/RKQ1.201221.002/20221101.142009:user/release-keys
