LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	IMountServiceListener.cpp \
	IMountShutdownObserver.cpp \
	IObbActionListener.cpp \
	IMountService.cpp

LOCAL_MODULE:= libstorage

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic \
					external/stlport/stlport
LOCAL_SHARED_LIBRARIES += libstlport \
						  libdl
endif


include $(BUILD_STATIC_LIBRARY)
