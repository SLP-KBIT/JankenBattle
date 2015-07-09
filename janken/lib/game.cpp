#ifndef INCLUDED_GAME
# include "game.h"
# define INCLUDED_GAME
#endif

#ifndef INCLUDED_TURN
# include "turn.h"
# define INCLUDED_TURN
#endif

void Game::exec()
{
  do {
    turn.output_result(&p1, &p2);
  } while (turn.is_fin(&p1, &p2));
}

