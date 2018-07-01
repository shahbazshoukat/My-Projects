#include"Game.h"
#include <SFML/Graphics.hpp>

Game::Game() : menuBackgroundTexture(), menuBackground(),
startGameTexture(), startGame(), PlayersTexture(), players(), helpTexture(), help(), exitTexture(), exit(),sL(10, 10, 4), font()
{
	mWindow.create(sf::VideoMode(920, 625), "Snake Ladders || by Shahbaz Shoukat");
	noOfText = 4;
	text = new sf::Text[noOfText];
}
Game::~Game()
{
	if (text)
		delete[]text;
}
void Game::run()
{
	menuBackgroundTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\menuBackground.png");
	startGameTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\newGame.png");
	PlayersTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\players.png");
	helpTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\newGame.png");
	exitTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\exit.png");
	returnTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\rollDice.png");
	if (!font.loadFromFile("C:\\Windows\\Fonts\\Arial.ttf"))
	{
		//error in loading
	}


	menuBackground.setTexture(menuBackgroundTexture);
	startGame.setTexture(startGameTexture);
	players.setTexture(PlayersTexture);
	help.setTexture(helpTexture);
	exit.setTexture(exitTexture);
	returnToMenu.setTexture(returnTexture);

	menuBackground.setScale(sf::Vector2f(0.9,0.7));
	players.setScale(sf::Vector2f(0.35, 0.35));
	startGame.setScale(sf::Vector2f(0.35, 0.35));
	help.setScale(sf::Vector2f(0.35, 0.35));
	exit.setScale(sf::Vector2f(0.35, 0.35));
	returnToMenu.setScale(sf::Vector2f(0.35, 0.35));

	//menuBackground.setPosition(sf::Vector2f(1, 1));
	players.setPosition(sf::Vector2f(100, 100));
	startGame.setPosition(sf::Vector2f(600, 500));
	help.setPosition(sf::Vector2f(200, 200));
	exit.setPosition(sf::Vector2f(300, 300));
	returnToMenu.setPosition(sf::Vector2f(500, 500));
	int flag1, flag2;
	while (mWindow.isOpen())
	{
		flag1 = 1;
		flag2 = 1;
		sf::Event event;
		while (mWindow.pollEvent(event))
		{
			mWindow.clear();
			mWindow.draw(menuBackground);
			mWindow.draw(startGame);
			mWindow.draw(players);
			mWindow.draw(help);
			mWindow.draw(exit);
			if (event.type == sf::Event::Closed)
					mWindow.close();
			else if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
			{
				sf::Vector2i mousePos = sf::Mouse::getPosition(mWindow);
				if (mousePos.x > startGame.getGlobalBounds().left &&
					mousePos.x <  startGame.getGlobalBounds().left + startGame.getGlobalBounds().width
					&& mousePos.y > startGame.getGlobalBounds().top  &&
					mousePos.y < startGame.getGlobalBounds().top + startGame.getGlobalBounds().height)
				{
					
					sL.setNames();
					sL.setPawns("abcdef");
					sL.display(mWindow);

				}
				else if (mousePos.x > players.getGlobalBounds().left &&
					mousePos.x <  players.getGlobalBounds().left + players.getGlobalBounds().width
					&& mousePos.y > players.getGlobalBounds().top  &&
					mousePos.y <  players.getGlobalBounds().top + players.getGlobalBounds().height)
				{
					sL.Players(mWindow);
				}
				else if (mousePos.x > help.getGlobalBounds().left &&
					mousePos.x < help.getGlobalBounds().left + help.getGlobalBounds().width
					&& mousePos.y> help.getGlobalBounds().top &&
					mousePos.y < help.getGlobalBounds().top + help.getGlobalBounds().height)
				{
					sL.help(mWindow);
				}
				else if (mousePos.x > exit.getGlobalBounds().left &&
					mousePos.x < exit.getGlobalBounds().left + exit.getGlobalBounds().width
					&& mousePos.y> exit.getGlobalBounds().top &&
					mousePos.y < exit.getGlobalBounds().top + exit.getGlobalBounds().height)
				{
					std::exit(0);
				}
				
			}

			mWindow.display();
		}
		// check all the window's events that were triggered since the last iteration of the loop
		
	}
}
void Game::update()
{
	
}
void Game::render()
{


	
}
