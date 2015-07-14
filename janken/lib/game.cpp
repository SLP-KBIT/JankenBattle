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
    turn.battle(&p1, &p2);
    turn.output_result(&p1, &p2);
    p1.use_hand();
    p2.use_hand();
  } while (turn.is_fin(&p1, &p2));
}

