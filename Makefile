CC=gcc
CFLAGS := $(CFLAGS) -std=c11 -g -O3 -fPIC -Wall -Werror
DEPS = nbhashmap.h debug.h
OBJ = nbhashmap.o test.o 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) $(CPPFLAGS) $(LDFLAGS)

lib: nbhashmap.o

test: test.o nbhashmap.o
	gcc -std=c11 -g -Wall -Werror test.c -o test -lpthread

.PHONY: clean

clean:
	rm -rf *.o *.a *.la *.lo *.so test test.dSYM/
