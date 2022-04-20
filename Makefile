nbhashmap.o: nbhashmap.c nbhashmap.h debug.h
	gcc -std=c11 -g -O3 -fPIC -Wall -Werror -c nbhashmap.c -o nbhashmap.o

test: test.c nbhashmap.c
	gcc -std=c11 -g -Wall -Werror test.c -o test -lpthread

run: test
	time ./test

.PHONY: clean

clean:
	rm -rf *.o *.a *.la *.lo *.so test test.dSYM/

