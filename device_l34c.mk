$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/l34c/l34c-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/l34c/overlay

LOCAL_PATH := device/lge/l34c
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_PROPERTY_OVERIDES += \
    ro.secure=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1
    
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
    
# Recovery

PRODUCT_COPY_FILES += \
     $(LOCAL_PATH):/recovery/ueventd.l34c.rc:root/ueventd.l34c.rc \
     device/lge/l34c/recovery/fstab.l34c:recovery/root/etc/twrp.fstab \
     device/lge/l34c/recovery/fstab.l34c:root/fstab.l34c
#    device/lge/l34c/recovery/init.l34c.rc:root/init.l34c.rc 

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_l34c
PRODUCT_DEVICE := l34c
