#ifndef INCLUDED_HAND
# include "hand.h"
# define INCLUDED_HAND
#endif

class Player2 : public Player
{
public:
  Player2()
  {
    id = 2;
  }

  Hand strategy(int rock, int scissors, int paper, int enemy_r, int enemy_s, int enemy_p)
  {
    return SCISSORS;
  }
};
