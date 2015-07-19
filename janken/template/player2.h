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

  //--- PLAYER_STRATEGY_START

  Hand strategy(int rock, int scissors, int paper, int enemy_r, int enemy_s, int enemy_p)
  {
    if ( paper > 0 ) { return PAPER; }
    if ( scissors > 0 ) { return SCISSORS; }
    if ( rock > 0 ) { return ROCK; }
  }

  //--- PLAYER_STRATEGY_END
};

