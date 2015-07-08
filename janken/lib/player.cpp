#include "player.h"

#define NUM 3

Player::Player()
{
  _rock = _scissors = _paper = NUM;
}

int Player::_strategy(Player *enemy)
{
  return strategy(_rock, _scissors, _paper, enemy->_rock, enemy->_scissors, enemy->_paper);
}

