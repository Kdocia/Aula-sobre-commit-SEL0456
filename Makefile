all: hello

hello: hello.o myfunction.o myfunction2.o
	gcc -o hello hello.o myfunction.o myfunction2.o -lm

myfunction.o: myfunction.c
	gcc -c myfunction.c

myfunction2.o: myfunction2.c
	gcc -c myfunction2.c

clean:
	rm -f *.s*.o output erro

distclean: clean 
	rm -f hello

hello.o: hello.c
	gcc -c hello.c

