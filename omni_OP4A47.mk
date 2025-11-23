#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from OP4A47 device
$(call inherit-product, device/oppo/OP4A47/device.mk)

PRODUCT_DEVICE := OP4A47
PRODUCT_NAME := omni_OP4A47
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PDPM00
PRODUCT_MANUFACTURER := oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="PDPM00-user 12 RKQ1.211103.002 Q.e70b06_13c2_13c3 release-key"

BUILD_FINGERPRINT := OPPO/PDPM00/OP4A47:12/RKQ1.211103.002/Q.e70b06_13c2_13c3:user/release-keys
