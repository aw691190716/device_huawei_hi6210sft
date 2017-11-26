LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_CFLAGS := -Wall
LOCAL_SRC_FILES := init_hi6210sft.cpp
ifneq ($(TARGET_LIBINIT_DEFINES_FILE),)
  LOCAL_SRC_FILES += ../../../../$(TARGET_LIBINIT_DEFINES_FILE)
endif
LOCAL_MODULE := libinit_hi6210sft

include $(BUILD_STATIC_LIBRARY)
