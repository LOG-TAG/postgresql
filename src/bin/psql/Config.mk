LOCAL_PATH:= $(call my-dir)

SRC_FILES:= command.c common.c help.c input.c \
	stringutils.c mainloop.c copy.c startup.c \
	prompt.c variables.c large_obj.c print.c \
	describe.c psqlscan.c tab-complete.c mbprint.c \
	dumputils.c keywords.c kwlookup.c