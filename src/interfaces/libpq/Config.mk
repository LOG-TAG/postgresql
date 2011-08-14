LOCAL_PATH:= $(call my-dir)

SRC_FILES:= fe-auth.c fe-connect.c fe-exec.c fe-misc.c \
	fe-print.c fe-lobj.c fe-protocol2.c fe-protocol3.c \
	pqexpbuffer.c pqsignal.c fe-secure.c libpq-events.c \
	md5.c ip.c wchar.c encnames.c noblock.c \
	pgstrcasecmp.c thread.c strlcpy.c

#SRC_FILES:= assert.c elog.c fe-auth.c fe-connect.c fe-exec.c fe-misc.c \
#	fe-print.c fe-lobj.c fe-protocol2.c fe-protocol3.c \
#	globals.c guc.c guc-file.c ipc.c pqexpbuffer.c pqsignal.c fe-secure.c libpq-events.c \
#	localtime.c mcxt.c md5.c ip.c wchar.c encnames.c noblock.c \
#	pgstrcasecmp.c pgtz.c proc.c ps_status.c stringinfo.c strftime.c thread.c