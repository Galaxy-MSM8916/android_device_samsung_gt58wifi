#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gtelwifiue/gtelwifiue-vendor.mk)

# Inherit from common
USE_QCOM_MIXER_PATHS := 1
$(call inherit-product, device/samsung/gte-common/device-common.mk)

LOCAL_PATH := device/samsung/gtelwifiue

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gtelwifiue/overlay
