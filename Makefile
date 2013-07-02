CFLAGS+=-g -fpic -Wall
CPPFLAGS+=-I. $(shell pkg-config --cflags glib-2.0)
LDFLAGS=$(shell pkg-config --libs glib-2.0)

libgatt.so: att.o gatt.o gattrib.o lib/uuid.o btio/btio.o lib/bluetooth.o
	$(CC) -shared -Wall $(LDFLAGS) -o $@ $?

clean:
	$(RM) -f *.o */*.o *.so test/test
