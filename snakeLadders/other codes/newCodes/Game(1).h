#ifndef GAME_H	
#define GAME_H
#include <SFML/Graphics.hpp>
#include"Player.h"
#include"snakeLadders.h"
class Game
{
private:
	SnakeLadders sL;
	sf::RenderWindow mWindow;
	sf::Texture menuBackgroundTexture;
	sf::Texture startGameTexture;
	sf::Texture PlayersTexture;
	sf::Texture helpTexture;
	sf::Texture exitTexture;
	sf::Texture returnTexture;
	sf::Sprite menuBackground;
	sf::Sprite startGame;
	sf::Sprite players;
	sf::Sprite help;
	sf::Sprite exit;
	sf::Sprite returnToMenu;
	sf::Font font;
	sf::Text * text;
	int noOfText;
	void processEvents();
	void update();
	void render();
public:
	Game();
	~Game();
	void run();
};

#endif