#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),OP4A47)

# 覆盖 dtb/dtbo 的安装目标，避免 ninja 去找 out/.../dtb.img
INSTALLED_DTBIMAGE_TARGET := $(BOARD_PREBUILT_DTBIMAGE)
INSTALLED_DTBOIMAGE_TARGET := $(BOARD_PREBUILT_DTBOIMAGE)

# 递归包含子目录的 makefile
include $(call all-subdir-makefiles,$(LOCAL_PATH))

endif
