#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common Infinity stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_guacamoleb
PRODUCT_DEVICE := guacamoleb
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := GM1901
PRODUCT_BRAND := OnePlus

# Exclude Aperture in favor of OnePlus Camera
PRODUCT_NO_CAMERA := true

# Axion Stuff
## Initial
TARGET_DISABLE_EPPE := true

## Enable blur effects
TARGET_ENABLE_BLUR := true

## Enable ViPER4AndroidFX
TARGET_INCLUDE_VIPERFX := false

## Properties
# Camera information (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 48,5
AXION_CAMERA_FRONT_INFO := 16

# Maintainer name (underscores become spaces in the UI)
AXION_MAINTAINER := themagicalmammal_|_Dipan

# Processor name (underscores become spaces)
AXION_PROCESSOR := Snapdragon™_855

# High Brightness Mode (HBM)
HBM_SUPPORTED := true
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode

# Flashlight strength
TORCH_STR_SUPPORTED := true

# doze fix
# for devices with doze/sensor related issues 
TARGET_NEEDS_DOZE_FIX := true

# refresh rate list (optional) - defining this flags makes the controller skip the parsing of Display.Mode refresh rates
# for supported refresh rates. The refresh rate controller will also assume that all the defined refresh rates are "supported"
TARGET_SUPPORTED_REFRESH_RATES := 60

# GAPPS PROPERTIES
PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus7-user 12 SKQ1.211113.001 P.202303230244 release-keys" \
    BuildFingerprint=OnePlus/OnePlus7/OnePlus7:12/SKQ1.211113.001/P.202303230244:user/release-keys \
    DeviceName=OnePlus7 \
    DeviceProduct=OnePlus7 \
    SystemDevice=OnePlus7 \
    SystemName=OnePlus7

