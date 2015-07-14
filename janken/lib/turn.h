#ifndef INCLUDED_PLAYER
# include "player.h"
# define INCLUDED_PLAYER
#endif

#ifndef INCLUDED_HAND
# include "hand.h"
# define INCLUDED_HAND
#endif

class Turn
{
public:
  void battle(Player *p1, Player *p2);

  void output_result(Player *p1, Player *p2);

  bool is_fin(Player *p1, Player *p2);

private:
  Hand hand1, hand2;
  int result;

  //--- hand1が勝ったかどうか
  bool is_win(Hand hand1, Hand hand2);
};

