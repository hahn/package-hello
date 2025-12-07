prefix = /usr

CC = gcc
CFLAGS = -Wall -O2

all: hello

hello: src/hello.c
	$(CC) $(CFLAGS) -o $@ $^

install: hello
	install -m 755 -D hello $(DESTDIR)$(prefix)/bin/hello

clean:
	rm -f hello *.o

uninstall:
	rm -f $(prefix)/bin/hello

.PHONY: all install clean uninstall
