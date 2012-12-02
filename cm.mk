## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := IdeaTab_A2109A

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Lenovo/A2109A/device_A2109A.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A2109A
PRODUCT_NAME := IdeaTab_A2109A
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := IdeaTabA2109A
PRODUCT_MANUFACTURER := LENOVO
