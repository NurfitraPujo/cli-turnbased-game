require_relative './lib/CharacterFactory'
require_relative './lib/Game'

def start_game
  char1 = create_char('Jin Sakai', 200, 100)
  char1.to_ss
  char2 = create_char('Genghis Khan', 300, 50)
  char2.to_s
  game = Game.new(char1, char2)
  until game.is_finished
    game.player_attacking(game.characters[0], game.characters[1])
    game.player_attacking(game.characters[1], game.characters[0])
    game.check_player_health
  end
end

start_game
