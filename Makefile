all: trie.o

trie.o: trie.c trie.h
	$(CC) $(CFLAGS) $(DBG_FLAGS) -o trie.o -c trie.c

test: trie.o test.o
	$(CC) $(CFLAGS) $(DBG_FLAGS) -o test test.o trie.o

test.o: test.c trie.h
	$(CC) $(CFLAGS) $(DBG_FLAGS) -o test.o -c test.c

run_test: test
	./test

clean:
	rm -rf *.o test
