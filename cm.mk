# Boot Animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := l34c

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/l34c/device_l34c.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := l34c
PRODUCT_NAME := cm_l34c
PRODUCT_BRAND := lge
PRODUCT_MODEL := l34c
PRODUCT_MANUFACTURER := lge
