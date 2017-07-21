LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),hi6210sft)
include $(call all-makefiles-under,$(LOCAL_PATH)
endif

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/huawei/hi6210sft/AndroidBoardVendor.mk
