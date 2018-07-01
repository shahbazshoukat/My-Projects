#ifndef PLAYER_H
#define PLAYER_H
#include<string>
using namespace std;
class Player
{
private:
	string name;
	string pawn;
public:
	Player();
	Player(string n, string p);
	void setName(string n);
	void setPawn(string p);
	string getName();
	string getPawn();
	int rollDice();
};

#endif