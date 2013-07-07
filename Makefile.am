AUTOMAKE_OPTIONS = subdir-objects
ACLOCAL_AMFLAGS = ${ACLOCAL_FLAGS} -I m4

libgatt_la_CFLAGS = $(WARNING_CFLAGS) $(MISC_CFLAGS) @GLIB_CFLAGS@
libgatt_la_LDFLAGS = @GLIB_LIBS@

lib_LTLIBRARIES = libgatt.la
libgatt_la_SOURCES = src/att.c src/gatt.c src/gattrib.c src/btio.c src/uuid.c src/hci.c src/sdp.c src/bluetooth.c

pkginclude_HEADERS = src/att.h src/btio.h src/gatt.h src/gattrib.h src/bluetooth.h
