LOCAL_PATH := $(call my-dir)

# audio_hal_playback_test
# ==============================================================================
include $(CLEAR_VARS)
LOCAL_SRC_FILES := qahw_playback_test.c \
                   qahw_effect_test.c
LOCAL_MODULE := hal_play_test

hal-play-inc    += external/tinyalsa/include

LOCAL_CFLAGS += -Wall -Werror -Wno-sign-compare

LOCAL_HEADER_LIBRARIES := \
    libqahw_headers \
    libqahwapi_headers

LOCAL_SHARED_LIBRARIES := \
    libaudioutils\
    libqahw \
    libqahwwrapper \
    libutils \
    libcutils

LOCAL_32_BIT_ONLY := true

LOCAL_C_INCLUDES += $(hal-play-inc)
LOCAL_VENDOR_MODULE := true

include $(BUILD_EXECUTABLE)

# audio_hal_multi_record_test
# ==============================================================================
include $(CLEAR_VARS)
LOCAL_SRC_FILES := qahw_multi_record_test.c
LOCAL_MODULE := hal_rec_test
LOCAL_CFLAGS += -Wall -Werror -Wno-sign-compare

LOCAL_HEADER_LIBRARIES := \
    libqahwapi_headers

LOCAL_SHARED_LIBRARIES := \
    libaudioutils \
    libqahw \
    libutils

LOCAL_32_BIT_ONLY := true

LOCAL_VENDOR_MODULE := true

include $(BUILD_EXECUTABLE)
