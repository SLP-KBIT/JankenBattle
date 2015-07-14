#ifndef INCLUDED_TURN
# include "turn.h"
# define INCLUDED_TURN
#endif

#ifndef INCLUDED_PLAYER
# include "player.h"
# define INCLUDED_PLAYER
#endif

#ifndef INCLUDED_PLAYER1
# include "../template/player1.h"
# define INCLUDED_PLAYER1
#endif

#ifndef INCLUDED_PLAYER2
# include "../template/player2.h"
# define INCLUDED_PLAYER2
#endif

class Game
{
public:
  void exec();

private:
  Player1 p1;
  Player2 p2;
  Turn turn;

  bool is_continue();
};

