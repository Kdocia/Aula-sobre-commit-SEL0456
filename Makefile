ALL = main

all: $(ALL)

main: hello.o myfunction.o myfunction2.o
	gcc -o h-o $@ $^ -lm

%.o: %.c
	gcc -c $<

clean:
	rm -f *.s*.o output erro

distclean: clean 
	rm -f $(ALL)



