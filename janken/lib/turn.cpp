#include "player.h"
#include "turn.h"

int Turn::result(Player *p1, Player *p2)
{
  int h1 = p1->_strategy(p2);
  int h2 = p2->_strategy(p1);

  if ( is_win(h1, h2) ) { return 1; }
  else if ( is_win(h2, h1) ) { return -1; }
  else { return 0; }
}

bool Turn::is_fin(Player *p1, Player *p2)
{
  return false;
}

bool Turn::is_win(int hand1, int hand2)
{
  return hand1 == Rock && hand2 == Scissors ||
    hand1 == Scissors && hand2 == Paper ||
    hand1 == Paper && hand2 == Rock;
}

