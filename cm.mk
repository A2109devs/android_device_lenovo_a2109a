# Release name
PRODUCT_RELEASE_NAME := IdeaTab_A2109A

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/Lenovo/A2109A/full_A2109A.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := full_a2109a
PRODUCT_DEVICE := a2109a
PRODUCT_BRAND := Android
PRODUCT_MODEL := Full Android on A2109A

# Don't restrict vendor folder
PRODUCT_RESTRICT_VENDOR_FILES := false
