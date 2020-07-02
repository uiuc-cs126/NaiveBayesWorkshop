#Define target 
EXENAME = main
OBJS = main.o Operation.o Expression.o CachedCalculator.o

CXX = clang++
CXXFLAGS = -std=c++0x -c -g -O0 -Wall -Wextra
LD = clang++
LDFLAGS = -std=c++0x

all: $(EXENAME)

$(EXENAME): $(OBJS)
	$(LD) $^ $(LDFLAGS) -o $(EXENAME)

main.o: main.cpp
	$(CXX) $< $(CXXFLAGS)

Operation.o: src/Operation.cpp interface/Operation.h
	$(CXX) $< $(CXXFLAGS)

Expression.o: src/Expression.cpp interface/Expression.h
	$(CXX) $< $(CXXFLAGS)

CachedCalculator.o: src/CachedCalculator.cpp interface/CachedCalculator.h
	$(CXX) $< $(CXXFLAGS)

clean:
	-rm -f *.o $(EXENAME)