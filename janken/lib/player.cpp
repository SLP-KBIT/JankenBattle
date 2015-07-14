#ifndef INCLUDED_PLAYER
# include "player.h"
# define INCLUDED_PLAYER
#endif

#define NUM 3

Player::Player()
{
  _rock = _scissors = _paper = NUM;
  id = 0;
}

void Player::_strategy(Player *enemy)
{
  hand = strategy(_rock, _scissors, _paper, enemy->_rock, enemy->_scissors, enemy->_paper);
  if ( ! can_use() ) { hand = NONE; }
}

bool Player::can_use()
{
  switch ( hand ) {
    case ROCK : return _rock > 0;
    case SCISSORS : return _scissors > 0;
    case PAPER : return _paper > 0;
    default : return false;
  }
}

void Player::use_hand()
{
  switch ( hand ) {
    case ROCK : _rock--; break;
    case SCISSORS : _scissors--; break;
    case PAPER : _paper--; break;
  }
}

bool Player::is_continue()
{
  return _rock > 0 || _scissors > 0 || _paper > 0;
}

