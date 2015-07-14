#ifndef INCLUDED_GAME
# include "game.h"
# define INCLUDED_GAME
#endif

#ifndef INCLUDED_TURN
# include "turn.h"
# define INCLUDED_TURN
#endif

#ifndef INCLUDED_HAND
# include "hand.h"
# define INCLUDED_HAND
#endif

void Game::exec()
{
  do {
    turn.battle(&p1, &p2);
    turn.output_result(&p1, &p2);
    p1.use_hand();
    p2.use_hand();
  } while (is_continue());
}

bool Game::is_continue()
{
  if ( p1.hand == NONE || p2.hand == NONE ) { return false; }
  return p1.is_continue() || p2.is_continue();
}

