LOCAL_PATH:= $(call my-dir)

SRC_FILES:= chklocale.c copydir.c \
	dirmod.c exec.c \
	noblock.c path.c pgsleep.c pgstrcasecmp.c \
	qsort.c qsort_arg.c \
	sprompt.c \
	strlcat.c strlcpy.c thread.c

# 

## unnecessary files, mainly for win32
# inet_aton.c getopt.c getopt_long.c gethostname.c crypt.c dirent.c getaddrinfo.c getrusage.c gettimeofday.c 
# pipe.c random.c srandom.c strerror.c strtol.c 
# unsetenv.c rand.c snprintf.c strtoul.c strdup.c fseeko.c isinf.c kill.c memcmp.c open.c  rint.c       
