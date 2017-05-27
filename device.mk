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

# Media configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
	$(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# Disable RIL
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.carrier=wifi-only \
	ro.radio.noril=1

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.model=SM-T560NU \
	ro.product.device=gtelwifiue

