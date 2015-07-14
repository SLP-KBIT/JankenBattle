#ifndef INCLUDED_HAND
# include "hand.h"
# define INCLUDED_HAND
#endif

class Player
{
public:
  int id;
  Hand hand;
  int _rock, _scissors, _paper;

  Player();

  void _strategy(Player *enemy);

  bool can_use();

  virtual Hand strategy(int rock, int scissors, int paper, int enemy_r, int enemy_s, int enemy_p) = 0;
};

