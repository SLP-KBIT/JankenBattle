
#define NUM 3

class Player
{
public:
  int _rock, _scissors, _paper;
  Player()
  {
    _rock = _scissors = _paper = NUM;
  }

  int _strategy(Player *enemy)
  {
    return strategy(_rock, _scissors, _paper, enemy->_rock, enemy->_scissors, enemy->_paper);
  }

  virtual int strategy(int rock, int scissors, int paper, int enemy_r, int enemy_s, int enemy_p) = 0;
};

