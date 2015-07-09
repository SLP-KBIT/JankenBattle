
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

void Turn::battle(Player *p1, Player *p2)
{
  hand1 = p1->_strategy(p2);
  hand2 = p2->_strategy(p1);

  if ( is_win(hand1, hand2) ) { result = 1; }
  else if ( is_win(hand2, hand1) ) { result = -1; }
  else { result = 0; }
}

void Turn::output_result()
{
  printf("%d,%d,%d\n", hand1, hand2, result);
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

