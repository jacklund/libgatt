ROOTDIR=/usr
INCLUDES=att.h gatt.h gattrib.h btio/btio.h
INCLUDEDIR=$(ROOTDIR)/include/gatt
LIBDIR=$(ROOTDIR)/lib
LIB=libgatt.so
INSTALL = /usr/bin/install -c
CFLAGS+=-g -fpic -Wall
CPPFLAGS+=-I. $(shell pkg-config --cflags glib-2.0)
LDFLAGS=$(shell pkg-config --libs glib-2.0)

$(LIB): att.o gatt.o gattrib.o lib/uuid.o btio/btio.o lib/bluetooth.o
	$(CC) -shared -Wall $(LDFLAGS) -o $@ $?

$(INCLUDEDIR):
	mkdir -p $(INCLUDEDIR)

install: $(LIB) $(LIBDIR) $(INCLUDEDIR)
	$(INSTALL) -s -m 0644 libgatt.so $(LIBDIR)
	$(INSTALL) -m 0644 $(INCLUDES) $(INCLUDEDIR)

uninstall:
	$(RM) $(LIBDIR)/$(LIB)
	$(RM) -r $(INCLUDEDIR)

clean:
	$(RM) -f *.o */*.o *.so
