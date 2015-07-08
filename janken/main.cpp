#include <stdio.h>
#include "lib/player.h"
#include "lib/turn.h"
#include "template/player1.h"
#include "template/player2.h"

class Game
{
public:
  void exec()
  {
    do {
      printf("%d\n", turn.result(&p1, &p2));
    } while (turn.is_fin(&p1, &p2));
  }

private:
  Player1 p1;
  Player2 p2;
  Turn turn;
};



int main(void)
{
  Game game;

  game.exec();

  return 0;
}



