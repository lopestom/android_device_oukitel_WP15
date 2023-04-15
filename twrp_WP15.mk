#
# Copyright (C) 2023 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from star device
$(call inherit-product, device/oukitel/WP15/device.mk)

# Inherit some common recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := WP15
PRODUCT_NAME := twrp_WP15
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := WP15
PRODUCT_MANUFACTURER := wheatek
PRODUCT_RELEASE_NAME := OUKITEL WP15

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=WP15 \
    PRODUCT_NAME=WP15_RU \
    PRIVATE_BUILD_DESC="WP15_RU-user 11 RP1A.200720.011 1653633312 release-keys"

BUILD_FINGERPRINT := OUKITEL/WP15_RU/WP15:11/RP1A.200720.011/1653633312:user/release-keys
#PLATFORM_BASE_OS = OUKITEL/WP15_RU/WP15:11/RP1A.200720.011/1640680713:user/release-keys

