AUTOMAKE_OPTIONS = subdir-objects
ACLOCAL_AMFLAGS = ${ACLOCAL_FLAGS} -I m4

libgatt_la_CFLAGS = $(WARNING_CFLAGS) $(MISC_CFLAGS) @GLIB_CFLAGS@
libgatt_la_LDFLAGS = @GLIB_LIBS@

lib_LTLIBRARIES = libgatt.la
libgatt_la_SOURCES = att.c gatt.c gattrib.c utils.c btio/btio.c lib/uuid.c lib/hci.c lib/sdp.c lib/bluetooth.c

include_HEADERS = att.h btio/btio.h gatt.h gattrib.h utils.h
