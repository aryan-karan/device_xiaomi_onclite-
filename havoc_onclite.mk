#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some common Havoc stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720
#TARGET_INCLUDE_PIXEL_CHARGER := true

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := havoc_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210605.005/7349499:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210605.005 7349499 release-keys"
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
