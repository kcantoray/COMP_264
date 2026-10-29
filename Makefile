
CC = gcc
CFLAGS = -Wall -Wextra

all: testfib

testfib: testfib.o fib.o
	$(CC) $(CFLAGS) -o testfib testfib.o fib.o

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

fib.o: fib.s
	$(CC) -c fib.s -o fib.o

clean:
	rm -f testfib testfib.o fib.o

