#
# Copyright (C) 2021 The aospOS Project
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
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

## Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

## Inscreen Fingerprint HAL
TARGET_HAVE_FOD := true

## Inherit from beyond2lte device
$(call inherit-product, device/samsung/beyond2lte/device.mk)

## Boot Animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440

## Inherit some common Elixir stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1440
TARGET_GAPPS_ARCH := arm64
WITH_GMS := true

# Project-Elixir
IS_PHONE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
ELIXIR_BUILD_TYPE := OFFICIAL
BUILD_USERNAME := FrEeRuNnEr4EvEr
BUILD_HOSTNAME := Elixir
TARGET_INCLUDE_STOCK_ACORE := false
EXTRA_UDFPS_ANIMATIONS := true

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier, this must come after all inclusions
PRODUCT_NAME := aosp_beyond2lte
PRODUCT_DEVICE := beyond2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G975F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
