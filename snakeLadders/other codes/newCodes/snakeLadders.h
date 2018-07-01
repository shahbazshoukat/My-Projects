#ifndef SNAKELADDERS_H
#define SNAKELADDERS_H
#include"Player.h"
#include<string.h>

using namespace std;
#include <SFML/Graphics.hpp>
class SnakeLadders
{
private:
	string ** board;
	int rows;
	int cols;
	Player * plyr;
	int capacity;
	int flag1;
	int flag2;
	int diceVal;
	//sf::RenderWindow window;
	sf::RectangleShape * horizontalLines;
	sf::RectangleShape * verticalLines;
	sf::Texture backgroundTexture;
	sf::Texture boardTexture;
	sf::Texture pawnTexture;
	sf::Texture diceTexture;
	sf::Texture rollDiceTexture;
	sf::Texture returnTexture;
	sf::Sprite background;
	sf::Sprite boardSp;
	sf::Sprite * pawn;
	sf::Sprite dice;
	sf::Sprite rollDice;
	sf::Sprite returnToMenu;
	sf::Font font;
public:
	SnakeLadders();
	SnakeLadders(int r, int c, int cap);
	SnakeLadders(const SnakeLadders & ref);
	SnakeLadders & operator=(const SnakeLadders & ref);
	~SnakeLadders();
	void setRows(int r);
	void setCols(int c);
	void setCapacity(int cap);
	void setPawns(string p);
	void setNames();
	void setFlag1(int f1);
	void setFlag2(int f2);
	int getRows();
	int getCols();
	int getCapacity();
	int getFlag1();
	int getFlag2();
	bool isEven(int num);
	void moveForward(Player & p, int i, int j, int num);
	void moveBackward(Player & p, int i, int j, int num);
	void removePawn(Player &p, int i, int j);
	void movePawn(Player & p, int n);
	void moveOnSnake(Player & p,int i,int j);
	void moveOnLadder(Player & p, int i, int j);
	bool isTherePawn(int i, int j);
	void startGame();
	bool checkGameStatus(Player & p);
	bool isSnake(int i, int j)const;
	bool isLadder(int i, int j)const;
	void movePawnOnSnake(Player & p, int n)const;
	void movePawnOnLadder(Player & p, int n)const;
	void drawMenu();
	void drawBoard();
	void display(sf::RenderWindow  & window);
	void runGame();
	void processEvents();
	void Players(sf::RenderWindow  & window);
	void help(sf::RenderWindow & window);
	void aboutUs(sf::RenderWindow & window);
	void newGame();
};

#endif