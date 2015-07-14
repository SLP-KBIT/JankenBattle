#ifndef INCLUDED_HAND
# include "hand.h"
# define INCLUDED_HAND
#endif

class Player1 : public Player
{
public:
  Player1()
  {
    id = 1;
  }

  Hand strategy(int rock, int scissors, int paper, int enemy_r, int enemy_s, int enemy_p)
  {
    return ROCK;
  }
};

