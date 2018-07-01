#include<iostream>
using namespace std;
#include"snakeLadders.h"

int main()
{
	SnakeLadders s(10, 10, 4);
	s.setNames();
	s.setPawns("abcdef");
	s.startGame();
	s.display();
	return 1;
}
