LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

subdirs := $(addprefix $(LOCAL_PATH)/,$(addsuffix /Android.mk, \
	port \
	interfaces/libpq \
	bin/psql\
	))

include $(subdirs)
