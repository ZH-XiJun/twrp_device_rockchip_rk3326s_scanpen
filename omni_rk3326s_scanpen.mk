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

# Inherit from rk3326s_scanpen device
$(call inherit-product, device/rockchip/rk3326s_scanpen/device.mk)

PRODUCT_DEVICE := rk3326s_scanpen
PRODUCT_NAME := omni_rk3326s_scanpen
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := rk3326s_scanpen
PRODUCT_MANUFACTURER := rockchip

PRODUCT_GMS_CLIENTID_BASE := android-rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk3326s_scanpen-userdebug 9 PI 220246 test-keys"

BUILD_FINGERPRINT := rockchip/rk3326s_scanpen/rk3326s_scanpen:9/PI/lugong12182158:userdebug/test-keys
