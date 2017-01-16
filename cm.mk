
# Inherit from common
$(call inherit-product, device/samsung/gtel-common/cm.mk)

$(call inherit-product, device/samsung/gtelwifiue/full_gtelwifiue.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gtelwifiue
PRODUCT_NAME := cm_gtelwifiue
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T560NU
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung
