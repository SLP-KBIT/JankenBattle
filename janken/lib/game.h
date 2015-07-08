#include "player.h"
#include "../template/player1.h"
#include "../template/player2.h"
#include "turn.h"

class Game
{
public:
  void exec();

private:
  Player1 p1;
  Player2 p2;
  Turn turn;
};

