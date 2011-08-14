#!/bin/sh

TOPDIR=${PWD}

MYLINKS="./src/interfaces/libpq/ip.c ../../backend/libpq/ip.c ./src/interfaces/libpq/wchar.c ../../backend/utils/mb/wchar.c ./src/interfaces/libpq/pgstrcasecmp.c ../../port/pgstrcasecmp.c ./src/interfaces/libpq/encnames.c ../../backend/utils/mb/encnames.c ./src/interfaces/libpq/md5.c ../../backend/libpq/md5.c ./src/interfaces/libpq/thread.c ../../port/thread.c ./src/interfaces/libpq/strlcpy.c ../../port/strlcpy.c ./src/interfaces/libpq/noblock.c ../../port/noblock.c ./src/include/pg_config_os.h ../../src/include/port/linux.h ./src/include/parser/gram.h ../../../src/backend/parser/gram.h ./src/include/utils/probes.h ../../../src/backend/utils/probes.h ./src/include/utils/fmgroids.h ../../../src/backend/utils/fmgroids.h ./src/bin/psql/pqexpbuffer.h ../../interfaces/libpq/pqexpbuffer.h ./src/bin/psql/dumputils.c ../pg_dump/dumputils.c ./src/bin/psql/kwlookup.c ../../backend/parser/kwlookup.c ./src/bin/psql/dumputils.h ../pg_dump/dumputils.h ./src/bin/psql/keywords.c ../pg_dump/keywords.c ./src/bin/psql/libpq-fe.h ../../interfaces/libpq/libpq-fe.h ./src/bin/psql/pqsignal.h ../../include/libpq/pqsignal.h"

do_links() {
	local i j
	while [ $# -ne 0 ]; do 
	
		cd ${TOPDIR}

		i=${1}
		shift
		j=${1}
		
		cd $(dirname ${i})
		rm -f $(basename ${i})

		echo "creating ${i} -> ${j}"

		ln -sf ${j} $(basename ${i})

		shift
	done
}

do_links ${MYLINKS}
