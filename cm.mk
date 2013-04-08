# Release name
PRODUCT_RELEASE_NAME := IdeaTab_A2109A

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 352

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/A2109A/full_A2109A.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A2109A
PRODUCT_NAME := cm_A2109A
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := A2109A
PRODUCT_MANUFACTURER := lenovo

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=A2109A BUILD_FINGERPRINT="Lenovo/IdeaTab_A2109A/A2109A:4.1.1/JRO03R/A2109A_A411_03_13_121126:user/release-keys" PRIVATE_BUILD_DESC="kai-user 4.1.1 JRO03R A2109A_A411_03_13_121126 release-keys"