AUTOMAKE_OPTIONS = subdir-objects
ACLOCAL_AMFLAGS = ${ACLOCAL_FLAGS} -I m4

AM_CFLAGS = $(WARNING_CFLAGS) $(MISC_CFLAGS) @GLIB_CFLAGS@

lib_LTLIBRARIES = libgatt.la
libgatt_la_SOURCES = att.c gatt.c gattrib.c lib/uuid.c btio/btio.c lib/bluetooth.c

