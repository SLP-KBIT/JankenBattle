
all: main.o game.o turn.o player.o
	g++ -o janken.exe main.o game.o turn.o player.o

main.o: main.cpp
	g++ -c main.cpp

game.o: lib/game.cpp
	g++ -c lib/game.cpp

turn.o: lib/turn.cpp
	g++ -c lib/turn.cpp

player.o: lib/player.cpp
	g++ -c lib/player.cpp

clean:
	rm -f *.o *.exe

