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
	sf::RenderWindow window;
	sf::RectangleShape * horizontalLines;
	sf::RectangleShape * verticalLines;
	sf::Texture backgroundTexture;
	sf::Texture boardTexture;
	sf::Texture pawnTexture;
	sf::Texture diceTexture;
	sf::Texture rollDiceTexture;
	sf::Texture playersTexture;
	sf::Texture newGameTexture;
	sf::Texture exitTexture;
	sf::Sprite background;
	sf::Sprite boardSp;
	sf::Sprite * pawn;
	sf::Sprite dice;
	sf::Sprite rollDice;
	sf::Sprite players;
	sf::Sprite newGame;
	sf::Sprite exit;
	sf::Font font;
	sf::Text * text;
	int noOfText;
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
	int getRows();
	int getCols();
	int getCapacity();
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
	void drawBoard();
	void display();
	void processEvents();
};

#endif