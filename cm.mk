# Release name
PRODUCT_RELEASE_NAME := apollo

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)
# Inherit device configuration
$(call inherit-product, device/samsung/apollo/full_apollo.mk)

PRODUCT_PACKAGE_OVERLAYS := device/samsung/apollo/overlay

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := apollo
PRODUCT_NAME := cm_apollo
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I5800
PRODUCT_MANUFACTURER := Samsung

