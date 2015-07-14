
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

#ifndef INCLUDED_HAND
# include "hand.h"
# define INCLUDED_HAND
#endif

void Turn::battle(Player *p1, Player *p2)
{
  p1->_strategy(p2);
  p2->_strategy(p1);

  if ( is_win(p1->hand, p2->hand) ) { result = 1; }
  else if ( is_win(p2->hand, p1->hand) ) { result = -1; }
  else { result = 0; }
}

void Turn::output_result(Player *p1, Player *p2)
{
  printf("%d,%d,%d\n", p1->hand, p2->hand, result);
}

bool Turn::is_fin(Player *p1, Player *p2)
{
  return false;
}

bool Turn::is_win(Hand hand1, Hand hand2)
{
  return hand1 == ROCK && hand2 == SCISSORS ||
    hand1 == SCISSORS && hand2 == PAPER ||
    hand1 == PAPER && hand2 == ROCK;
}

