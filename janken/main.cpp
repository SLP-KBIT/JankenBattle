#include <stdio.h>
#include "lib/player.h"

#define ROCK 100
#define SCISSORS 200
#define PAPER 300

class Player1 : public Player
{
public:
  int strategy(int rock, int scissors, int paper, int enemy_r, int enemy_s, int enemy_p)
  {
    return 100;
  }
};

class Player2 : public Player
{
public:
  int strategy(int rock, int scissors, int paper, int enemy_r, int enemy_s, int enemy_p)
  {
    return 200;
  }
};

int main(void)
{
  Player1 p1;
  Player2 p2;

  printf("%d\n", p1._strategy(&p2));

  return 0;
}



