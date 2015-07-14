
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

  if ( p1->hand == NONE && p2->hand == NONE ) { winner = NULL; return; }
  if ( p1->hand == NONE && p2->hand != NONE ) { winner = p2; return; }
  if ( p1->hand != NONE && p2->hand == NONE ) { winner = p1; return; }

  if ( is_win(p1->hand, p2->hand) ) { winner = p1; }
  else if ( is_win(p2->hand, p1->hand) ) { winner = p2; }
  else { winner = NULL; }
}

void Turn::output_result(Player *p1, Player *p2)
{
  int id = 0;
  if ( winner != NULL ) { id = winner->id; }
  printf("%d,%d,%d\n", p1->hand, p2->hand, id);
}

bool Turn::is_fin(Player *p1, Player *p2)
{
  return false;
}

bool Turn::is_win(Hand hand1, Hand hand2)
{
  if ( hand1 == NONE ) { return false; }
  return hand1 == ROCK && hand2 == SCISSORS ||
    hand1 == SCISSORS && hand2 == PAPER ||
    hand1 == PAPER && hand2 == ROCK;
}

