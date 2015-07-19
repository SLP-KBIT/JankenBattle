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

  //--- PLAYER_STRATEGY_START

  Hand strategy(int rock, int scissors, int paper, int enemy_r, int enemy_s, int enemy_p)
  {
    if ( rock > 0 ) { return ROCK; }
    if ( scissors > 0 ) { return SCISSORS; }
    if ( paper > 0 ) { return PAPER; }
  }

  //--- PLAYER_STRATEGY_END
};

