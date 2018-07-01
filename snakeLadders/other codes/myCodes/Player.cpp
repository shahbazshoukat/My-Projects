#include<iostream>
#include"Player.h"
#include<cstdlib>
#include<ctime>
#include"string.h"
using namespace std;

Player::Player() :name("Player 1"), pawn("*")
{

}
Player::Player(string n, string p) : name(n), pawn(p)
{

}
void Player::setName(string n)
{
	name = n;
}
void Player::setPawn(string p)
{
	pawn = p;
}
string Player::getName()
{
	return name;
}
string Player::getPawn()
{
	return pawn;
}
int Player::rollDice()
{
	unsigned seed;
	seed = time(0)*rand();
	srand(seed);
	srand(seed);
	return 1 + rand() % 6;
}
