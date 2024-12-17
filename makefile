CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra

all: run

run: run.o
	$(CXX) $(CXXFLAGS) -o run run.o

run.o: run.cpp
	$(CXX) $(CXXFLAGS) -c run.cpp

clean:
	rm -f run run.o
