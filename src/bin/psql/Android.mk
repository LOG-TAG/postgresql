# check out the 'android build cookbook' page
# for some good definitions

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
include $(LOCAL_PATH)/Config.mk

LOCAL_MODULE:= psql

LOCAL_ARM_MODE:= ARM

LOCAL_REQUIRED_MODULES:= libssl libcrypto libpq libz \
	libpgport
LOCAL_SHARED_LIBRARIES:= libssl libcrypto libpq libz
LOCAL_STATIC_LIBRARIES:= libpgport

LOCAL_SRC_FILES:= $(SRC_FILES) 

LOCAL_CFLAGS:= -I$(LOCAL_PATH) \
	-I$(LOCAL_PATH)/../../interfaces/libpq \
	-I$(LOCAL_PATH)/../pg_dump \
	-I$(LOCAL_PATH)/../../include \
	-I$(LOCAL_PATH)/../../../../openssl/include

include $(BUILD_EXECUTABLE)
