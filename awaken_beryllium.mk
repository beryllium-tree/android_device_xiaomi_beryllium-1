#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/beryllium/device.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

#Inherit some common awaken stuff
$(call inherit-product, vendor/awaken/config/common.mk)
$(call inherit-product, vendor/awaken/config/gsm.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := awaken_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi
AWAKEN_BUILD_TYPE := OFFICIAL

BUILD_FINGERPRINT := "google/sunfish/sunfish:11/RP1A.200720.011/6746289:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sunfish-user 11 RP1A.200720.011 6746289 release-keys" \
    PRODUCT_NAME="beryllium"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi-rev1
