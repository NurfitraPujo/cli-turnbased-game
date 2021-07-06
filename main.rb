require_relative './lib/CharacterFactory'
require_relative './lib/Game'

def start_game
  char1 = create_char('Jin Sakai', 200, 50, true)
  char1.to_s
  char2 = create_char('Genghis Khan', 500, 50)
  char2.to_s
  game = Game.new(char1, char2)
  loop do
    game.player_attacking(game.characters[0], game.characters[1])
    break if game.is_finished

    game.player_attacking(game.characters[1], game.characters[0])
    break if game.is_finished
  end
end

start_game
