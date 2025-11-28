#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

# 设备专属配置
PRODUCT_DEVICE := OP4A47
PRODUCT_NAME := omni_OP4A47
PRODUCT_BRAND := oppo
PRODUCT_MODEL := OP4A47
PRODUCT_MANUFACTURER := oppo

# 覆盖 dtb/dtbo 的安装目标，避免 ninja 去找 out/.../dtb.img
INSTALLED_DTBIMAGE_TARGET := $(BOARD_PREBUILT_DTBIMAGE)
INSTALLED_DTBOIMAGE_TARGET := $(BOARD_PREBUILT_DTBOIMAGE)

# 包含预编译内核
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel

# 如果需要额外的 ramdisk 文件，可以在这里添加
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/recovery/root/init.rc:root/init.rc

# 继承 TWRP 通用配置
$(call inherit-product, vendor/twrp/config/common.mk)

# 继承设备专属 BoardConfig
$(call inherit-product, $(LOCAL_PATH)/BoardConfig.mk)
