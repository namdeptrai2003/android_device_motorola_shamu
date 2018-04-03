# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/motorola/shamu/device.mk)
$(call inherit-product-if-exists, vendor/motorola/shamu/shamu-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/shamu/overlay-mokee

## Device identifier. This must come after all inclusions
PRODUCT_NAME := mk_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

TARGET_VENDOR := moto

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    PRIVATE_BUILD_DESC="shamu-user 7.1.1 N6F27M 4299435 release-keys"

BUILD_FINGERPRINT := google/shamu/shamu:7.1.1/N6F27M/4299435:user/release-keys
