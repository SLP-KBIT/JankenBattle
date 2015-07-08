#include <stdio.h>

#include "game.h"
#include "turn.h"

void Game::exec()
{
  do {
    printf("%d\n", turn.result(&p1, &p2));
  } while (turn.is_fin(&p1, &p2));
}

