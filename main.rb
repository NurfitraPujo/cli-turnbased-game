require_relative './lib/CharacterFactory'
require_relative './lib/Game'

def start_game
  jin = create_char('Jin Sakai', 200, 50, is_hero: true)
  puts jin
  archer = create_char('Mongol archer', 120, 30, is_archer: true)
  puts archer
  swordsman = create_char('Mongol swordsman', 150, 50, is_swordsman: true)
  puts swordsman
  spearman = create_char('Mongol spearman', 130, 60, is_spearman: true)
  puts spearman
  game = Game.new(jin, archer, swordsman, spearman)
  loop do
    puts "\n"
    game.do_game_turn
    break if game.finished?
  end
  game.print_battle_result
end

start_game
