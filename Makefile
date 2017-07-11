all: sum_test

sum_test: main.o sum.o
	g++ -o sum_test main.o sum.o

main.o : sum.b main.cpp

sum.o : sum.h sum.cpp

clean:
	rm -f sum_test
	rm -f *.o
