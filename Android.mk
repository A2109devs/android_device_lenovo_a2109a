LOCAL_PATH := $(call my-dir)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

ifneq ($(filter a2109a,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
-include vendor/nvidia/common/TegraBoard.mk
endif
