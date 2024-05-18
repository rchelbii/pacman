CC = c++ 
CCFLAGS = --std=gnu++17 

SFML = -I/opt/homebrew/Cellar/sfml/2.6.1/include -lsfml-graphics -lsfml-window -lsfml-system -L/opt/homebrew/Cellar/sfml/2.6.1/lib

OUT_BIN = pacman

TARGET = -o bin/$(OUT_BIN)

all:
	$(CC) $(CCFLAGS) $(TARGET) Main.cpp ConvertSketch.cpp DrawMap.cpp DrawText.cpp Ghost.cpp GhostManager.cpp MapCollision.cpp Pacman.cpp $(SFML)

run:
	./bin/$(OUT_BIN)
