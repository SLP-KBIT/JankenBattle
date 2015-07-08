#include <stdio.h>
#include "lib/player.h"
#include "template/player1.h"
#include "template/player2.h"

class Turn
{
public:
  int result(Player *p1, Player *p2)
  {
    int h1 = p1->_strategy(p2);
    int h2 = p2->_strategy(p1);

    if ( is_win(h1, h2) ) { return 1; }
    else if ( is_win(h2, h1) ) { return -1; }
    else { return 0; }
  }

  bool is_fin(Player *p1, Player *p2)
  {
    return false;
  }

private:
  static const int Rock = 100;
  static const int Scissors = 200;
  static const int Paper = 300;

  //--- hand1が勝ったかどうか
  bool is_win(int hand1, int hand2)
  {
    return hand1 == Rock && hand2 == Scissors ||
      hand1 == Scissors && hand2 == Paper ||
      hand1 == Paper && hand2 == Rock;
  }
};

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



