#include<iostream>
#include"SnakeLadders.h"
#include"Player.h"
#include<string>
#include <SFML/Graphics.hpp>

using namespace std;

SnakeLadders::SnakeLadders() :backgroundTexture(), background(),
board(), boardSp(), pawnTexture(), diceTexture(), dice(), font()
{
	window.create(sf::VideoMode(1200, 680), "Snake Ladders || by Shahbaz Shoukat");
	capacity = 2;
	plyr = new Player[capacity];
	rows = 10;
	cols = 10;
	board = new string *[rows];
	for (int i = 0; i < rows; i++)
	{
		board[i] = new string[cols];
	}
	pawn = new sf::Sprite[capacity];
	horizontalLines = new sf::RectangleShape[rows + 1];
	verticalLines = new sf::RectangleShape[cols*(rows + 1)];
	noOfText = 4;
	text = new sf::Text[noOfText];
}
SnakeLadders::SnakeLadders(int r, int c, int cap) :backgroundTexture(), background(),
board(), boardSp(), pawnTexture(), diceTexture(), dice(), font()
{
	window.create(sf::VideoMode(1200, 680), "Snake Ladders || by Shahbaz Shoukat");

	capacity = cap;
	plyr = new Player[capacity];
	rows = r;
	cols = c;
	board = new string *[rows];
	for (int i = 0; i < rows; i++)
	{
		board[i] = new string[cols];
	}
	pawn = new sf::Sprite[capacity];
	horizontalLines = new sf::RectangleShape[rows + 1];
	verticalLines = new sf::RectangleShape[cols*(rows + 1)];
	noOfText = 4;
	text = new sf::Text[noOfText];
}
/*SnakeLadders::SnakeLadders(const SnakeLadders & ref)
{
	if (ref.plyr == 0 || ref.board == 0)
	{
		capacity = 0;
		plyr = 0;
		rows = 0;
		cols = 0;
		board = 0;
		return;
	}
	this->~SnakeLadders();
	capacity = ref.capacity;
	rows = ref.rows;
	cols = ref.cols;
	board = new string *[rows];
	for (int i = 0; i < rows; i++)
	{
		board[i] = new string[cols];
	}
	for (int i = 0; i < 10; i++)
	{
		memcpy(board[i], ref.board[i], cols);
	}
	plyr = new Player[capacity];
	memcpy(plyr, ref.plyr, capacity);
}*/
/*SnakeLadders & SnakeLadders::operator=(const SnakeLadders & ref)
{
	if (this == &ref)
	{
		return *this;
	}
	if (ref.plyr == 0 || ref.board == 0)
	{
		capacity = 0;
		plyr = 0;
		rows = 0;
		cols = 0;
		board = 0;
		return *this;
	}
	this->~SnakeLadders();
	capacity = ref.capacity;
	rows = ref.rows;
	cols = ref.cols;
	board = new string *[rows];
	for (int i = 0; i < rows; i++)
	{
		board[i] = new string[cols];
	}
	for (int i = 0; i < 10; i++)
	{
		memcpy(board[i], ref.board[i], cols);
	}
	plyr = new Player[capacity];
	memcpy(plyr, ref.plyr, capacity);
	return *this;
}*/
SnakeLadders::~SnakeLadders()
{
	if (plyr)
		delete[]plyr;
	if (board)
		delete[]board;
	if (horizontalLines)
		delete[]horizontalLines;
	if (verticalLines)
		delete[]verticalLines;
	if (pawn)
		delete[]pawn;
	if (text)
		delete[]text;
	capacity = 0;
	rows = 0;
	cols = 0;
}
void SnakeLadders::setRows(int r)
{
	rows = r;
}
void SnakeLadders::setCols(int c)
{
	cols = c;
}
void SnakeLadders::setCapacity(int cap)
{
	capacity = cap;
}
void SnakeLadders::setNames	()
{
	string str = "12345";
	for (int i = 0; i < capacity; i++)
	{

		plyr[i].setName("Player " + str.substr(i,1));
	}
}
int SnakeLadders::getRows()
{
	return rows;
}
int SnakeLadders::getCols()
{
	return cols;
}
int SnakeLadders::getCapacity()
{
	return capacity;
}
void SnakeLadders::setPawns(string p)
{
	for (int i = 0; i < capacity; i++)
	{
		plyr[i].setPawn(p.substr(i, 1));
	}
	
}
bool SnakeLadders::isEven(int num)
{
	if (num % 2 == 0)
	{
		return true;
	}
	else
	{
		return false;
	}
}
void SnakeLadders::moveForward(Player & p, int i, int j, int num)
{
	/*for (int k = 1; k <= num; k++)
	{
		if (k != 1)
			removePawn(p, i, j + k - 1);
		board[i][j + k] = board[i][j + k] + p.getPawn();
		//window.display();
	}*/
	//board[i][j + num] = board[i][j + num] + p.getPawn();
	if (isTherePawn(i, j + num))
	{
		board[i][j + num] = board[i][j + num] + p.getPawn();
	}
	else
	{
		board[i][j + num] = p.getPawn();
	}
	
	if (isSnake(i, j + num))
	{
		removePawn(p, i, j + num);
		moveOnSnake(p, i, j+num);
	}
	//Ladders
	else if (isLadder(i, j + num))
	{
		removePawn(p, i, j + num);
		moveOnLadder(p, i, j+num);
	}
}
void SnakeLadders::removePawn(Player & p, int i, int j)
{
	if (board[i][j].find(p.getPawn()) != string::npos)
	{
		int index = board[i][j].find(p.getPawn());
		//int length = p.getPawn().length();
		board[i][j].erase(index, 1);
	}
}
void SnakeLadders::movePawn(Player & p, int d)
{
	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			if (board[i][j].find(p.getPawn()) != string::npos)
			{
				if ((j + d) >(rows - 1))
				{
					if (i == rows - 1 && j + d>cols - 1)
					{
						return;
					}
					removePawn(p, i, j);
					moveForward(p, i + ((j + d) / rows), 0, (j + d) % rows);
					return;
				}
				else
				{
					removePawn(p, i, j);
					moveForward(p, i, j, d);
					return;
				}
			}
		}
	}
	moveForward(p, (d - 1) / rows, 0, ((d - 1) % rows));
	return;
}
void SnakeLadders::moveOnSnake(Player & p,int i,int j)
{
	if (i == 1 && j  == 5)
	{
		moveForward(p,0, 5, 0);
	}
	else if (i == 4 && j  == 5)
	{
		moveForward(p, 2, 4, 0);
	}
	else if (i == 4 && j == 8)
	{
		moveForward(p, 1, 0, 0);
	}
	else if (i == 6 && j == 1)
	{
		moveForward(p, 1, 8, 0);
	}
	else if (i == 6 && j == 3)
	{
		moveForward(p, 5, 9, 0);
	}
	else if (i == 7 && j == 3)
	{
		moveForward(p, 5, 2, 0);
	}
	else if (i == 8 && j == 8)
	{
		moveForward(p, 6, 7, 0);
	}
	else if (i == 9 && j == 1)
	{
		moveForward(p, 8, 7, 0);
	}
	else if (i == 9 && j == 4)
	{
		moveForward(p, 7, 4, 0);
	}
	else if (i == 9 && j == 8)
	{
		moveForward(p, 7, 9, 0);
	}
}
void SnakeLadders::moveOnLadder(Player & p, int i, int j)
{
	if (i == 0 && j  == 1)
	{
		moveForward(p, 3, 7, 0);
	}
	else if (i == 0 && j == 6)
	{
		moveForward(p, 1, 3, 0);
	}
	else if (i == 0 && j == 7)
	{
		moveForward(p, 3, 0, 0);
	}
	else if (i == 1 && j == 4)
	{
		moveForward(p, 2, 5, 0);
	}
	else if (i == 2 && j == 0)
	{
		moveForward(p, 4, 1, 0);
	}
	else if (i == 2 && j == 7)
	{
		moveForward(p, 8, 3, 0);
	}
	else if (i == 3 && j == 5)
	{
		moveForward(p, 4, 3, 0);
	}
	else if (i == 5 && j == 0)
	{
		moveForward(p, 6, 6, 0);
	}
	else if (i == 7, j == 0)
	{
		moveForward(p, 9, 0, 0);
	}
	else if (i == 7 && j == 7)
	{
		moveForward(p, 9, 7, 0);
	}
	else if (i == 8 && j == 6)
	{
		moveForward(p, 9, 3, 0);
	}
}
bool SnakeLadders::isTherePawn(int i, int j)
{
	for (int k = 0; k < capacity; k++)
	{
		if (board[i][j].find(plyr[k].getPawn()) != string::npos)
		{
			return true;
		}
	}
	return false;
}
void SnakeLadders::drawBoard()
{
	backgroundTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\background.jpg");
	boardTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\board.jpg");
	pawnTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\pawn.png");
	diceTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\dice.png");
	rollDiceTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\rollDice.png");
	playersTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\players.png");
	newGameTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\newGame.png");
	exitTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\exit.png");
	if (!font.loadFromFile("C:\\Windows\\Fonts\\Arial.ttf"))
	{
		//error in loading
	}
	background.setTexture(backgroundTexture);
	background.setScale(sf::Vector2f(0.9, 0.7));
	boardSp.setTexture(boardTexture);
	boardSp.setScale(sf::Vector2f(0.85, 0.85));
	dice.setScale(sf::Vector2f(0.4, 0.4));
	dice.setPosition(sf::Vector2f(720, 150));
	rollDice.setTexture(rollDiceTexture);
	rollDice.setScale(sf::Vector2f(0.35, 0.35));
	rollDice.setPosition(sf::Vector2f(680, 100));
	players.setTexture(playersTexture);
	players.setScale(sf::Vector2f(0.35, 0.35));
	players.setPosition(sf::Vector2f(680, 250));
	newGame.setTexture(newGameTexture);
	newGame.setScale(sf::Vector2f(0.35, 0.35));
	newGame.setPosition(sf::Vector2f(680, 10));
	exit.setTexture(exitTexture);
	exit.setScale(sf::Vector2f(0.35, 0.35));
	exit.setPosition(sf::Vector2f(680, 550));
	text[0].setString("2 Players");
	text[0].setFont(font);
	text[0].setScale(sf::Vector2f(1, 1));
	text[0].setPosition(sf::Vector2f(680, 300));
	text[1].setString("3 Players");
	text[1].setFont(font);
	text[1].setScale(sf::Vector2f(1,1));
	text[1].setPosition(sf::Vector2f(680, 340));
	text[2].setString("4 Players");
	text[2].setFont(font);
	text[2].setScale(sf::Vector2f(1,1));
	text[2].setPosition(sf::Vector2f(680, 380));
	text[3].setFont(font);
	text[3].setScale(sf::Vector2f(0.85, 0.85));
	text[3].setPosition(sf::Vector2f(680, 50));
	int j = 255, k = 0, l = 0;
	int saver = 255;
	for (int i = 0; i < capacity; i++)
	{
		pawn[i].setTexture(pawnTexture);
		pawn[i].setScale(sf::Vector2f(0.1, 0.1));
		pawn[i].setColor(sf::Color(j, k, l));
		if ((i+1)%3 == 0)
		{
			j = saver/2;
			k = saver/7;
			l = saver/3;
			saver = saver / 2;
		}
		swap(j, l);
		swap(k, l);
		

	}
	float x = 0, y = 0;
	for (int i = 0; i < rows + 1; i++)
	{
		horizontalLines[i].setFillColor(sf::Color::Transparent);
		horizontalLines[i].setSize(sf::Vector2f(625, 3));
		horizontalLines[i].setPosition(sf::Vector2f(x, y));
		x = x + 0;
		y = y + 62.25;

	}
	x = 0, y = 0;
	int count = 1;
	for (int i = 0; i < (cols*(rows + 1)); i++)
	{
		verticalLines[i].setFillColor(sf::Color::Transparent);
		verticalLines[i].setSize(sf::Vector2f(3, 62.5));
		verticalLines[i].setPosition(sf::Vector2f(x, y));

		if (count % 11 == 0)
		{
			x = 0;
			y = y + 62.25;
		}
		else
		{
			x = x + 62.25;
			y = y + 0;
		}
		count = count + 1;
	}
}
void SnakeLadders::display()
{
	drawBoard();
	setCapacity(2);
	int i = 0, diceVal;
	int flag1 = 1, flag2 = 1;
	while (window.isOpen())
	{
		window.clear();
		window.draw(background);
		window.draw(boardSp);
		window.draw(newGame);
		window.draw(players);
		window.draw(exit);
		window.draw(rollDice);
		for (int i = 0; i < 4; i++)
		{
			window.draw(text[i]);
		}
		int h = 0, v = 0;
		for (int i = rows - 1; i >= 0; i--)
		{
			sf::Vector2f posOfPawn;
			window.draw(horizontalLines[h]);
			h = h + 1;
			window.draw(verticalLines[v]);
			v = v + 1;
			int flag;
			for (int j = cols - 1; j >= 0; j--)
			{
				flag = 0;
				for (int k = 0; k < capacity; k++)
				{
					if (board[i][j].find(plyr[k].getPawn()) != string::npos)
					{
						if (flag == 1)
							posOfPawn = pawn[k - 1].getPosition() + sf::Vector2f(4, 0);
						else
							posOfPawn = verticalLines[v - 1].getPosition() + sf::Vector2f(2, 0);
						pawn[k].setPosition(posOfPawn);
						window.draw(pawn[k]);
						flag = 1;
					}
				}
				window.draw(verticalLines[v]);
				v = v + 1;
			}
			i = i - 1;
			window.draw(horizontalLines[h]);
			h = h + 1;
			window.draw(verticalLines[v]);
			v = v + 1;
			for (int j = 0; j < cols; j++)
			{
				flag = 0;
				for (int k = 0; k < capacity; k++)
				{
					if (board[i][j].find(plyr[k].getPawn()) != string::npos)
					{
						if (flag == 1)
							posOfPawn = pawn[k - 1].getPosition() + sf::Vector2f(4, 0);
						else
							posOfPawn = verticalLines[v - 1].getPosition() + sf::Vector2f(2, 0);
						pawn[k].setPosition(posOfPawn);
						window.draw(pawn[k]);
						flag = 1;
					}
				}
				window.draw(verticalLines[v]);
				v = v + 1;
			}
		}
		window.draw(horizontalLines[h]);
		h = h + 1;
		sf::Event event;
		while (window.pollEvent(event))
		{
			if (flag2 == 1)
			{
				text[3].setString(plyr[i].getName() + "'s Turn");
			}
			if (event.type == sf::Event::Closed)
				window.close();
			else if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
			{
				sf::Vector2i mousePos = sf::Mouse::getPosition(window);
				if (mousePos.x > rollDice.getGlobalBounds().left &&
					mousePos.x <  rollDice.getGlobalBounds().left + rollDice.getGlobalBounds().width
					&& mousePos.y > rollDice.getGlobalBounds().top  &&
					mousePos.y < rollDice.getGlobalBounds().top + rollDice.getGlobalBounds().height
					&& flag2 == 1)
				{
					dice.setTexture(diceTexture);
					int u = 10, v = 10, x = 200, y = 200;
					diceVal = plyr[i].rollDice();
					if (diceVal <= 3)
					{
						dice.setTextureRect(sf::IntRect(u + ((diceVal - 1)*x) + ((diceVal - 1) * 25), v, x, y));
					}
					else if (diceVal > 3)
					{
						u = 10;
						v = v + y + 25;
						dice.setTextureRect(sf::IntRect(u + ((diceVal - 4)*x) + ((diceVal - 4) * 25), v, x, y));
					}
					movePawn(plyr[i], diceVal);
					if (checkGameStatus(plyr[i]))
					{
						text[3].setString(plyr[i].getName() + " is Winner!");
						flag2 = 0;
					}
					i = i + 1;
					if (i == capacity)
						i = 0;
					flag1 = 0;
				}
				else if (mousePos.x > newGame.getGlobalBounds().left &&
					mousePos.x <  newGame.getGlobalBounds().left + newGame.getGlobalBounds().width
					&& mousePos.y > newGame.getGlobalBounds().top  &&
					mousePos.y <  newGame.getGlobalBounds().top + newGame.getGlobalBounds().height)
				{
					
				}
				else if (mousePos.x > text[0].getGlobalBounds().left && 
					mousePos.x < text[0].getGlobalBounds().left + text[0].getGlobalBounds().width
					&& mousePos.y> text[0].getGlobalBounds().top && 
					mousePos.y < text[0].getGlobalBounds().top + text[0].getGlobalBounds().height
					&& flag1 == 1)
				{
					text[0].setColor(sf::Color::Blue);
					setCapacity(2);
					flag1 = 0;
					
				}
				else if (mousePos.x > text[1].getGlobalBounds().left &&
					mousePos.x < text[1].getGlobalBounds().left + text[1].getGlobalBounds().width
					&& mousePos.y> text[1].getGlobalBounds().top &&
					mousePos.y < text[1].getGlobalBounds().top + text[1].getGlobalBounds().height
					&& flag1 == 1)
				{
					text[1].setColor(sf::Color::Blue);
					setCapacity(3);
					flag1 = 0;
				}
				else if (mousePos.x > text[2].getGlobalBounds().left &&
					mousePos.x < text[2].getGlobalBounds().left + text[2].getGlobalBounds().width
					&& mousePos.y> text[2].getGlobalBounds().top &&
					mousePos.y < text[2].getGlobalBounds().top + text[2].getGlobalBounds().height
					&& flag1 == 1)
				{
					text[2].setColor(sf::Color::Blue);
					setCapacity(4);
					flag1 = 0;
				}
				else if (mousePos.x > exit.getGlobalBounds().left &&
					mousePos.x <  exit.getGlobalBounds().left + exit.getGlobalBounds().width
					&& mousePos.y > exit.getGlobalBounds().top  &&
					mousePos.y <  exit.getGlobalBounds().top + exit.getGlobalBounds().height)
				{
					std::exit(0);
				}
			}
		}
		window.draw(dice);
		window.display();
	}
}
bool SnakeLadders::checkGameStatus(Player & p)
{
	if (board[rows - 1][cols - 1] == p.getPawn())
	{
		return true;
	}
	return false;
}
bool SnakeLadders::isSnake(int i, int j)const
{
	if ((i == 1 && j == 5)
		|| (i == 4 && j == 5)
		|| (i == 4 && j == 8)
		|| (i == 6 && j == 1)
		|| (i == 6 && j == 3)
		||(i == 7 && j == 3)
		|| (i == 8 && j == 8)
		|| (i == 9 && j == 1)
		|| (i == 9 && j == 4)
		|| (i == 9 && j == 8))
	{
		return true;
	}
	return false;
}
bool SnakeLadders::isLadder(int i, int j)const
{
	if ((i == 0 && j == 1)
		|| (i == 0 && j == 6)
		|| (i == 0 && j == 7)
		|| (i == 1 && j == 4)
		|| (i == 2 && j == 0)
		|| (i == 2 && j == 7)
		|| (i == 3 && j == 5)
		|| (i == 5 && j == 0)
		|| (i == 7 && j == 0)
		|| (i == 7 && j == 7)
		|| (i == 8 && j == 6))
	{
		return true;
	}
	return false;
}
void SnakeLadders::startGame()
{
	//movePawn(plyr[0], 65);
	//movePawn(plyr[0], 1);
}
