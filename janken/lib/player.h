class Player
{
public:
  int _rock, _scissors, _paper;
  Player();

  int _strategy(Player *enemy);

  virtual int strategy(int rock, int scissors, int paper, int enemy_r, int enemy_s, int enemy_p) = 0;
};

