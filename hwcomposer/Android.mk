

LOCAL_PATH := $(call my-dir)

# HAL module implemenation stored in
# hw/<OVERLAY_HARDWARE_MODULE_ID>.<ro.product.board>.so
include $(CLEAR_VARS)

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SHARED_LIBRARIES := libutils liblog libEGL
LOCAL_SRC_FILES := hwcomposer.cpp
LOCAL_MODULE := hwcomposer.hi6210sft
LOCAL_MODULE_TAGS := optional

ifneq (,$(filter userdebug eng,$(TARGET_BUILD_VARIANT)))
LOCAL_CFLAGS += -DDEBUG
endif

include $(BUILD_SHARED_LIBRARY)
