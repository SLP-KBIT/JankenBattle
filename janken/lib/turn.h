#ifndef INCLUDED_PLAYER
# include "player.h"
# define INCLUDED_PLAYER
#endif

class Turn
{
public:
  void output_result(Player *p1, Player *p2);

  bool is_fin(Player *p1, Player *p2);

private:
  static const int Rock = 100;
  static const int Scissors = 200;
  static const int Paper = 300;

  //--- hand1が勝ったかどうか
  bool is_win(int hand1, int hand2);
};

