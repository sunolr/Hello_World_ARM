hello: hello.o
	ld -o hello hello.o

hello.o: hello.s
	as -o hello.o hello.s

clean:
	rm -f hello hello.o

