#include"Game.h"
#include <SFML/Graphics.hpp>

Game::Game() : menuBackgroundTexture(), menuBackground(),
startGameTexture(), startGame(), PlayersTexture(), players(),
helpTexture(), help(), exitTexture(), exit(),sL(10, 10, 4), font()
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
	sL.setCapacity(2);
	menuBackgroundTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\menuBackground.jpg");
	continueTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\continue.png");
	startGameTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\newGame.png");
	PlayersTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\players.png");
	helpTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\help.png");
	aboutTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\about.png");
	exitTexture.loadFromFile("F:\\BSSE\\2nd Semester\\snakeLadders\\images\\exit.png");
	if (!font.loadFromFile("C:\\Windows\\Fonts\\Arial.ttf"))
	{
		//error in loading
	}


	menuBackground.setTexture(menuBackgroundTexture);
	continueSp.setTexture(continueTexture);
	startGame.setTexture(startGameTexture);
	players.setTexture(PlayersTexture);
	about.setTexture(aboutTexture);
	help.setTexture(helpTexture);
	exit.setTexture(exitTexture);

	menuBackground.setScale(sf::Vector2f(0.5,0.58));
	players.setScale(sf::Vector2f(0.35, 0.35));
	about.setScale(sf::Vector2f(0.35, 0.35));
	continueSp.setScale(sf::Vector2f(0.35, 0.35));
	startGame.setScale(sf::Vector2f(0.35, 0.35));
	help.setScale(sf::Vector2f(0.35, 0.35));
	exit.setScale(sf::Vector2f(0.35, 0.35));

	//menuBackground.setPosition(sf::Vector2f(1, 1));
	players.setPosition(sf::Vector2f(600, 350));
	about.setPosition(sf::Vector2f(600, 450));
	continueSp.setPosition(sf::Vector2f(600, 250));
	startGame.setPosition(sf::Vector2f(600, 300));
	help.setPosition(sf::Vector2f(600, 400));
	exit.setPosition(sf::Vector2f(600, 500));
	int flag = 1;
	while (mWindow.isOpen())
	{
		sf::Event event;
		while (mWindow.pollEvent(event))
		{
			mWindow.clear();
			mWindow.draw(menuBackground);
			mWindow.draw(startGame);
			mWindow.draw(players);
			mWindow.draw(about);
			mWindow.draw(help);
			mWindow.draw(exit);
			if (flag == 0)
			{
				mWindow.draw(continueSp);
			}
			if (event.type == sf::Event::Closed)
					mWindow.close();
			else if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
			{
				sf::Vector2i mousePos = sf::Mouse::getPosition(mWindow);
				if (mousePos.x > continueSp.getGlobalBounds().left &&
					mousePos.x <  continueSp.getGlobalBounds().left + continueSp.getGlobalBounds().width
					&& mousePos.y > continueSp.getGlobalBounds().top  &&
					mousePos.y < continueSp.getGlobalBounds().top + continueSp.getGlobalBounds().height)
				{
					sL.display(mWindow);

				}
				else if (mousePos.x > startGame.getGlobalBounds().left &&
					mousePos.x <  startGame.getGlobalBounds().left + startGame.getGlobalBounds().width
					&& mousePos.y > startGame.getGlobalBounds().top  &&
					mousePos.y < startGame.getGlobalBounds().top + startGame.getGlobalBounds().height)
				{
					if (sL.getFlag1() == 0)
					{
						sL.newGame();
						sL.setNames();
						sL.setPawns("abcdef");
						sL.display(mWindow);
					}
					else
					{
						sL.setNames();
						sL.setPawns("abcdef");
						sL.display(mWindow);
					}
					flag = 0;
				}
				else if (mousePos.x > players.getGlobalBounds().left &&
					mousePos.x <  players.getGlobalBounds().left + players.getGlobalBounds().width
					&& mousePos.y > players.getGlobalBounds().top  &&
					mousePos.y <  players.getGlobalBounds().top + players.getGlobalBounds().height)
				{
					sL.Players(mWindow);
				}
				else if (mousePos.x > about.getGlobalBounds().left &&
					mousePos.x < about.getGlobalBounds().left + about.getGlobalBounds().width
					&& mousePos.y> about.getGlobalBounds().top &&
					mousePos.y < about.getGlobalBounds().top + about.getGlobalBounds().height)
				{
					sL.aboutUs(mWindow);
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
