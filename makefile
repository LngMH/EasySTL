test : main.o listTest.o vectorTest.o alloc.o
	g++ -O2 -std=gnu++11 -o test main.o listTest.o vectorTest.o alloc.o

main.o : main.cpp .\test\listTest.h .\test\vectorTest.h 
	g++ -std=gnu++11 -c main.cpp

listTest.o : .\test\listTest.cpp .\test\listTest.h 
	g++ -std=gnu++11 -c .\test\listTest.cpp

vectorTest.o : .\test\vectorTest.cpp .\test\vectorTest.h 
	g++ -std=gnu++11 -c .\test\vectorTest.cpp

alloc.o : alloc.cpp alloc.h
	g++ -std=gnu++11 -c alloc.cpp
clean : 
	rm test.exe main.o listTest.o vectorTest.o alloc.o