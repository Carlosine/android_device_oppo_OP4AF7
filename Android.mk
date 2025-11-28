#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),OP4A47)

# 覆盖 dtb.img 的生成规则，直接使用预编译文件
INSTALLED_DTBIMAGE_TARGET := $(BOARD_PREBUILT_DTBIMAGE)

# 如果有预编译 dtbo，也覆盖
INSTALLED_DTBOIMAGE_TARGET := $(BOARD_PREBUILT_DTBOIMAGE)

include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

