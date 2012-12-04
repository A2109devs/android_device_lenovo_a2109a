
# Inherit from those products. Most specific first.
$(call inherit-product, device/lenovo/a2109a/device.mk)

# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

### Necessary?
#LOCAL_PATH := device/lenovo/a2109a
#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif
#
#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_a2109a
PRODUCT_DEVICE := a2109a
PRODUCT_BRAND := Android
PRODUCT_MODEL := Full Android on A2109A

# Don't restrict vendor folder
PRODUCT_RESTRICT_VENDOR_FILES := false
