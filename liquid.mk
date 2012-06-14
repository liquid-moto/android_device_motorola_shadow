# name
PRODUCT_RELEASE_NAME := DROIDX

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# device
#$(call inherit-product-if-exists, device/motorola/shadow/shadow.mk)

# products
PRODUCT_DEVICE := Shadow
PRODUCT_BRAND := google
PRODUCT_NAME := liquid_shadow
PRODUCT_MODEL := DROIDX
PRODUCT_MANUFACTURER := Motorola
PRODUCT_PROPERTY_OVERRIDES += ro.modversion=liquid.shadow.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=IMM76D \
    PRODUCT_NAME=shadow_vzw \
    BUILD_FINGERPRINT="google/soju/crespo:4.0.3/IML74K/239410:user/release-keys" \
    PRIVATE_BUILD_DESC="soju-user 4.0.3 IML74K 239410 release-keys"

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/hdpi/bootanimation.zip:system/media/bootanimation.zip
