CC = gcc
CFLAGS = -Wall

all: compiler

compiler: compiler.o lexer.o
	$(CC) $(CFLAGS) -o compiler compiler.o lexer.o

compiler.o: compiler.c lexer.h
	$(CC) $(CFLAGS) -c compiler.c

lexer.o: lexer.c lexer.h
	$(CC) $(CFLAGS) -c lexer.c

clean:
	rm -f *.o compiler
