require_relative './lib/CharacterFactory.rb'
require_relative './lib/Game.rb'

def start_game
    char1 = create_char("Jin Sakuragi", 200, 100)
    char2 = create_char("Genghis Khan", 300, 50)
    game = Game.new(char1, char2)
    while game.isFinished != true 
        game.player_attacking(game.characters[0], game.characters[1])
        game.player_attacking(game.characters[1], game.characters[0])
        game.check_player_health
    end 
end

start_game