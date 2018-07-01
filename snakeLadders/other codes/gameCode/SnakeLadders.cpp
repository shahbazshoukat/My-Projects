#include<iostream>
#include"SnakeLadders.h"
#include"Player.h"
#include<string>
#include <SFML/Graphics.hpp>

using namespace std;

SnakeLadders::SnakeLadders() :backgroundTexture(), background(),
board(), boardSp(), pawnTexture(), diceTexture(), dice(), font()
{
	//window.create(sf::VideoMode(1200, 680), "Snake Ladders || by Shahbaz Shoukat");
	capacity = 2;
	plyr = new Player[capacity];
	rows = 10;
	cols = 10;
	flag1 = 1;
	flag2 = 1;
	diceVal = 0;
	board = new string *[rows];
	for (int i = 0; i < rows; i++)
	{
		board[i] = new string[cols];
	}
	pawn = new sf::Sprite[capacity];
	horizontalLines = new sf::RectangleShape[rows + 1];
	verticalLines = new sf::RectangleShape[cols*(rows + 1)];
}
SnakeLadders::SnakeLadders(int r, int c, int cap) :backgroundTexture(), background(),
board(), boardSp(), pawnTexture(), diceTexture(), dice(), font()
{
	//window.create(sf::VideoMode(1200, 680), "Snake Ladders || by Shahbaz Shoukat");

	capacity = cap;
	plyr = new Player[capacity];
	rows = r;
	cols = c;
	flag1 = 1;
	flag2 = 1;
	diceVal = 0;
	board = new string *[rows];
	for (int i = 0; i < rows; i++)
	{
		board[i] = new string[cols];
	}
	pawn = new sf::Sprite[capacity];
	horizontalLines = new sf::RectangleShape[rows + 1];
	verticalLines = new sf::RectangleShape[cols*(rows + 1)];
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
void SnakeLadders::setFlag1(int f1)
{
	flag1 = f1;
}
void SnakeLadders::setFlag2(int f2)
{
	flag2 = f2;
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
int SnakeLadders::getFlag1()
{
	return flag1;
}
int SnakeLadders::getFlag2()
{
	return flag2;
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
	returnTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\return.png");
	if (!font.loadFromFile("C:\\Windows\\Fonts\\Arial.ttf"))
	{
		//error in loading
	}
	background.setTexture(backgroundTexture);
	background.setScale(sf::Vector2f(0.92, 0.7));
	boardSp.setTexture(boardTexture);
	boardSp.setScale(sf::Vector2f(0.85, 0.85));
	dice.setScale(sf::Vector2f(0.4, 0.4));
	dice.setPosition(sf::Vector2f(720, 150));
	rollDice.setTexture(rollDiceTexture);
	rollDice.setScale(sf::Vector2f(0.35, 0.35));
	rollDice.setPosition(sf::Vector2f(680, 100));
	returnToMenu.setTexture(returnTexture);
	returnToMenu.setScale(sf::Vector2f(0.35, 0.35));
	returnToMenu.setPosition(sf::Vector2f(680, 550));
	int j = 255, k = 0, l = 0;
	int saver = 255;
	for (int i = 0; i < capacity; i++)
	{
		pawn[i].setTexture(pawnTexture);
		pawn[i].setScale(sf::Vector2f(0.09, 0.09));
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
void SnakeLadders::display(sf::RenderWindow & window)
{
	drawBoard();
	sf::Text playerTurn;
	sf::Text players[4];
	sf::Sprite playersPawn[4];
	int j = 255, k = 0, l = 0;
	int saver = 255;
	for (int i = 0; i < capacity; i++)
	{
		playersPawn[i].setTexture(pawnTexture);
		playersPawn[i].setScale(sf::Vector2f(0.09, 0.09));
		playersPawn[i].setColor(sf::Color(j, k, l));
		if ((i + 1) % 3 == 0)
		{
			j = saver / 2;
			k = saver / 7;
			l = saver / 3;
			saver = saver / 2;
		}
		swap(j, l);
		swap(k, l);
	}
	int p = 300;
	for (int i = 0; i < capacity; i++)
	{
		players[i].setFont(font);
		players[i].setScale(sf::Vector2f(0.85, 0.85));
		players[i].setPosition(sf::Vector2f(680, p));
		playersPawn[i].setPosition(sf::Vector2f(790, p - 25));
		players[i].setColor(sf::Color::White);
		players[i].setString(plyr[i].getName());
		p = p + 50;
	}
	playerTurn.setFont(font);
	playerTurn.setScale(sf::Vector2f(0.85, 0.85));
	playerTurn.setPosition(sf::Vector2f(680, 50));
	playerTurn.setColor(sf::Color::White);
	int i = 0;
	while (window.isOpen())
	{
		window.clear();
		window.draw(background);
		window.draw(boardSp);
		window.draw(returnToMenu);
		window.draw(rollDice);
		window.draw(playerTurn);
		for (int i = 0; i < capacity; i++)
		{
			window.draw(players[i]);
			window.draw(playersPawn[i]);
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
							posOfPawn = pawn[k - 1].getPosition() + sf::Vector2f(8, 0);
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
				playerTurn.setString(plyr[i].getName() + "'s Turn");
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
						playerTurn.setString(plyr[i].getName() + " is Winner!");
						flag2 = 0;
					}
					i = i + 1;
					if (i == capacity)
						i = 0;
					flag1 = 0;
				}
				else if (mousePos.x > returnToMenu.getGlobalBounds().left &&
					mousePos.x <  returnToMenu.getGlobalBounds().left + returnToMenu.getGlobalBounds().width
					&& mousePos.y > returnToMenu.getGlobalBounds().top  &&
					mousePos.y <  returnToMenu.getGlobalBounds().top + returnToMenu.getGlobalBounds().height)
				{
					return;
				}
			}
		}
		if (flag1 == 0)
		{
			window.draw(dice);
		}
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
void SnakeLadders::Players(sf::RenderWindow  & window)
{
	backgroundTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\background.jpg");
	returnTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\return.png");
	if (!font.loadFromFile("C:\\Windows\\Fonts\\Arial.ttf"))
	{
		//error in loading
	}
	background.setTexture(backgroundTexture);
	background.setScale(sf::Vector2f(0.52, 0.52));
	returnToMenu.setTexture(returnTexture);
	returnToMenu.setScale(sf::Vector2f(0.45, 0.45));
	returnToMenu.setPosition(sf::Vector2f(100, 500));
	sf::Text playersText[3];
	playersText[0].setString("2 Players");
	playersText[0].setFont(font);
	playersText[0].setScale(sf::Vector2f(2, 2));
	playersText[0].setPosition(sf::Vector2f(320, 150));
	playersText[0].setColor(sf::Color::White);
	playersText[1].setString("3 Players");
	playersText[1].setFont(font);
	playersText[1].setScale(sf::Vector2f(2, 2));
	playersText[1].setPosition(sf::Vector2f(320, 225));
	playersText[1].setColor(sf::Color::White);
	playersText[2].setString("4 Players");
	playersText[2].setFont(font);
	playersText[2].setScale(sf::Vector2f(2, 2));
	playersText[2].setPosition(sf::Vector2f(320, 300));
	playersText[2].setColor(sf::Color::White);
	

	
	while (window.isOpen())
	{

		window.clear();
		window.draw(background);
		window.draw(playersText[0]);
		window.draw(playersText[1]);
		window.draw(playersText[2]);
		window.draw(returnToMenu);
		
		sf::Event event;
		while (window.pollEvent(event))
		{
			if (event.type == sf::Event::Closed)
				window.close();
			else if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
			{
				sf::Vector2i mousePos = sf::Mouse::getPosition(window);
				
				if (mousePos.x > playersText[0].getGlobalBounds().left &&
					mousePos.x < playersText[0].getGlobalBounds().left + playersText[0].getGlobalBounds().width
					&& mousePos.y> playersText[0].getGlobalBounds().top &&
					mousePos.y < playersText[0].getGlobalBounds().top + playersText[0].getGlobalBounds().height
					&& flag1!=0)
				{
					playersText[0].setColor(sf::Color::Blue);
					playersText[1].setColor(sf::Color::White);
					playersText[2].setColor(sf::Color::White);
					setCapacity(2);
					//flag1 = 0;

				}
				else if (mousePos.x > playersText[1].getGlobalBounds().left &&
					mousePos.x < playersText[1].getGlobalBounds().left + playersText[1].getGlobalBounds().width
					&& mousePos.y> playersText[1].getGlobalBounds().top &&
					mousePos.y < playersText[1].getGlobalBounds().top + playersText[1].getGlobalBounds().height
					&& flag1 != 0)
				{
					playersText[1].setColor(sf::Color::Blue);
					playersText[0].setColor(sf::Color::White);
					playersText[2].setColor(sf::Color::White);
					setCapacity(3);
					//flag1 = 0;
				}
				else if (mousePos.x > playersText[2].getGlobalBounds().left &&
					mousePos.x < playersText[2].getGlobalBounds().left + playersText[2].getGlobalBounds().width
					&& mousePos.y> playersText[2].getGlobalBounds().top &&
					mousePos.y < playersText[2].getGlobalBounds().top + playersText[2].getGlobalBounds().height
					&& flag1 != 0)
				{
					playersText[2].setColor(sf::Color::Blue);
					playersText[0].setColor(sf::Color::White);
					playersText[1].setColor(sf::Color::White);
					setCapacity(4);
					//flag1 = 0;
				}
				else if (mousePos.x > returnToMenu.getGlobalBounds().left &&
					mousePos.x <  returnToMenu.getGlobalBounds().left + returnToMenu.getGlobalBounds().width
					&& mousePos.y > returnToMenu.getGlobalBounds().top  &&
					mousePos.y <  returnToMenu.getGlobalBounds().top + returnToMenu.getGlobalBounds().height)
				{
					return;
				}
			}
		}
		window.display();
	}

}
void SnakeLadders::help(sf::RenderWindow & window)
{
	backgroundTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\background.jpg");
	returnTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\return.png");
	if (!font.loadFromFile("C:\\Windows\\Fonts\\Arial.ttf"))
	{
		//error in loading
	}
	background.setTexture(backgroundTexture);
	background.setScale(sf::Vector2f(0.52, 0.52));
	returnToMenu.setTexture(returnTexture);
	returnToMenu.setScale(sf::Vector2f(0.45, 0.45));
	returnToMenu.setPosition(sf::Vector2f(100, 500));
	sf::Text helpText;
	helpText.setFont(font);
	helpText.setScale(sf::Vector2f(0.85, 0.85));
	helpText.setPosition(sf::Vector2f(300, 100));
	helpText.setColor(sf::Color::White);
	helpText.setString("\t\t\t\t\t\tHELP\n\t\tWelcome to Snake Ladders!\n\n1-Press New Game To Start Game.\n2-Press Players to select number of Players.\n\tRemember! You can only change Number \n\tof Players before Pressing Roll Dice.\nPress Roll Dice to roll the dice.\n4-Press Exit to quit Game.");


	while (window.isOpen())
	{

		window.clear();
		window.draw(background);
		window.draw(helpText);
		window.draw(returnToMenu);

		sf::Event event;
		while (window.pollEvent(event))
		{
			if (event.type == sf::Event::Closed)
				window.close();
			else if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
			{
				sf::Vector2i mousePos = sf::Mouse::getPosition(window);

				if (mousePos.x > returnToMenu.getGlobalBounds().left &&
					mousePos.x <  returnToMenu.getGlobalBounds().left + returnToMenu.getGlobalBounds().width
					&& mousePos.y > returnToMenu.getGlobalBounds().top  &&
					mousePos.y <  returnToMenu.getGlobalBounds().top + returnToMenu.getGlobalBounds().height)
				{
					return;
				}
			}
		}
		window.display();
	}
}
void SnakeLadders::aboutUs(sf::RenderWindow & window)
{
	backgroundTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\background.jpg");
	returnTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\return.png");
	if (!font.loadFromFile("C:\\Windows\\Fonts\\Arial.ttf"))
	{
		//error in loading
	}
	background.setTexture(backgroundTexture);
	background.setScale(sf::Vector2f(0.52, 0.52));
	returnToMenu.setTexture(returnTexture);
	returnToMenu.setScale(sf::Vector2f(0.45, 0.45));
	returnToMenu.setPosition(sf::Vector2f(100, 500));
	sf::Text about;
	about.setFont(font);
	about.setScale(sf::Vector2f(0.85, 0.85));
	about.setPosition(sf::Vector2f(300, 100));
	about.setColor(sf::Color::White);
	about.setString("\t\t\t\t\tAbout Us\n\n\tWelcome to Snake Ladders!\n\n\t\tName: Shahbaz Shoukat\n\t\t\tRoll No:BSEF15M009");


	while (window.isOpen())
	{

		window.clear();
		window.draw(background);
		window.draw(about);
		window.draw(returnToMenu);

		sf::Event event;
		while (window.pollEvent(event))
		{
			if (event.type == sf::Event::Closed)
				window.close();
			else if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
			{
				sf::Vector2i mousePos = sf::Mouse::getPosition(window);

				if (mousePos.x > returnToMenu.getGlobalBounds().left &&
					mousePos.x <  returnToMenu.getGlobalBounds().left + returnToMenu.getGlobalBounds().width
					&& mousePos.y > returnToMenu.getGlobalBounds().top  &&
					mousePos.y <  returnToMenu.getGlobalBounds().top + returnToMenu.getGlobalBounds().height)
				{
					return;
				}
			}
		}
		window.display();
	}
}
void SnakeLadders::newGame()
{
	flag1 = 1;
	flag2 = 1;
	capacity = 2;
	diceVal = 0;
	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			board[i][j] = "";
		}
	}
	
}