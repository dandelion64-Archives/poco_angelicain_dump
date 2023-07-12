#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from angelicain device
$(call inherit-product, device/xiaomi/angelicain/device.mk)

PRODUCT_DEVICE := angelicain
PRODUCT_NAME := lineage_angelicain
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2006C3MI
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="angelicain-user 10 QP1A.190711.020 V12.0.19.0.QCRINXM release-keys"

BUILD_FINGERPRINT := POCO/angelicain/angelicain:10/QP1A.190711.020/V12.0.19.0.QCRINXM:user/release-keys
