# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/du/config/common_full_phone.mk)

PRODUCT_NAME := du_seedmtk
PRODUCT_DEVICE :=seedmtk
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixelv1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="seedmtk" \
    BUILD_FINGERPRINT=6.0/MRA58M/2280749:user/release-keys \
    PRIVATE_BUILD_DESC="sprout-user 6.0 MRA58M 2280749 release-keys" \
    ro.com.google.clientidbase=android-a1-lava

$(call inherit-product, device/google/seedmtk/seedmtk.mk)
