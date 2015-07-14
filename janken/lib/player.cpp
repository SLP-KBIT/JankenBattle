#ifndef INCLUDED_PLAYER
# include "player.h"
# define INCLUDED_PLAYER
#endif

#define NUM 3

Player::Player()
{
  _rock = _scissors = _paper = NUM;
}

void Player::_strategy(Player *enemy)
{
  hand = strategy(_rock, _scissors, _paper, enemy->_rock, enemy->_scissors, enemy->_paper);
}

