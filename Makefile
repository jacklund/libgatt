CFLAGS+=-g -fpic -Wall
CPPFLAGS+=-I. -I/usr/include/glib-2.0 -I/usr/lib/arm-linux-gnueabihf/glib-2.0/include/
LDFLAGS=-lglib-2.0

libgatt.so: att.o gatt.o gattrib.o lib/uuid.o btio/btio.o lib/bluetooth.o
	$(CC) -shared -Wall $(LDFLAGS) -o $@ $?

test: test/test

test/test: test/test.o
	$(CC) -L. -lgatt -lbluetooth $(LDFLAGS) -o $@ $?

clean:
	$(RM) -f *.o */*.o *.so test/test
