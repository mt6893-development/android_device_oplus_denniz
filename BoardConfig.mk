#
# Copyright (C) 2021 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/oplus/denniz

# Inherit from oplus mt6893-common
include device/oplus/mt6893-common/BoardConfigCommon.mk

TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U

# Assertation
TARGET_OTA_ASSERT_DEVICE := denniz,OP515BL1

# Kernel
TARGET_KERNEL_CONFIG := cupida_defconfig
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# Vibrator
TARGET_VIBRATOR_ALT_SEQ_TYPE := true

# Call proprietary blob setup
include vendor/oplus/denniz/BoardConfigVendor.mk
