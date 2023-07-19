#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from addison device
$(call inherit-product, device/motorola/addison/device.mk)

PRODUCT_DEVICE := addison
PRODUCT_NAME := omni_addison
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto Z Play
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lineage_addison-userdebug 11 RQ3A.211001.001 f9461655da release-keys"

BUILD_FINGERPRINT := motorola/addison_retail/addison:8.0.0/OPNS27.76-12-22-9/10:user/release-keys
