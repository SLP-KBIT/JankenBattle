
#ifndef INCLUDED_STDIO
# include <stdio.h>
# define INCLUDED_STDIO
#endif

#ifndef INCLUDED_PLAYER
# include "player.h"
# define INCLUDED_PLAYER
#endif

#ifndef INCLUDED_TURN
# include "turn.h"
# define INCLUDED_TURN
#endif

void Turn::output_result(Player *p1, Player *p2)
{
  int h1 = p1->_strategy(p2);
  int h2 = p2->_strategy(p1);
  int result;

  if ( is_win(h1, h2) ) { result = 1; }
  else if ( is_win(h2, h1) ) { result = -1; }
  else { result = 0; }
  printf("%d,%d,%d\n", h1, h2, result);
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

