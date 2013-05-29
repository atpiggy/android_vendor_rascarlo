# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_crespo.mk)

# Inherit common product files.
$(call inherit-product, vendor/rascarlo/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := rascarlo_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=crespo BUILD_FINGERPRINT="google/soju/crespo:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="crespo-user 4.2.2 JDQ39 573038 release-keys"

# Inherit media effect blobs
-include vendor/rascarlo/products/common_media_effects.mk

# Inherit common build.prop overrides
-include vendor/rascarlo/products/common_versions.mk

-include vendor/rascarlo/products/common_drm_phone.mk
-include vendor/samsung/crespo/device-vendor.mk
-include vendor/samsung/crespo/BoardConfigVendor.mk
