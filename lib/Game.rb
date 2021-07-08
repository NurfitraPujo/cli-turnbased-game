require_relative './Hero'

class Game
  attr_accessor :hero, :enemies, :is_finished, :winner

  def initialize(hero, *enemies)
    @hero = hero
    @enemies = enemies
    @is_finished = false
    @turn = 1
  end

  def hero_attacking
    attacked = @enemies.sample
    @hero.attack(attacked)
    check_enemies_response(attacked)
  end

  def enemy_attacking
    @enemies.each do |enemy|
      enemy.attack(hero)

      puts "#{@hero.name} dies." && break if @hero.died?
    end
  end

  def check_enemies_response(attacked)
    if attacked.died?
      puts "#{attacked.name} dies"
      @enemies.delete_if { |char| char.name == attacked.name }
    elsif  attacked.fleeing?
      puts "#{attacked.name} flees from the battlefield"
      @enemies.delete_if { |char| char.name == attacked.name }
    else
      attacked.to_s
    end
  end

  def player_attack_each_other
    puts 'Attack phase:'
    hero_attacking
    enemy_attacking
  end

  def finished?
    @hero.died? || @enemies.empty?
  end

  def print_character_stats
    puts 'Character Stats:'
    puts @hero
    @enemies.each do |enemy|
      puts enemy
    end
    puts "\n"
  end

  def print_turns
    puts "\n"
    puts "============ Turn #{@turn} ============"
  end

  def do_game_turn
    print_turns
    print_character_stats
    player_attack_each_other
    @turn += 1
  end

  def print_battle_result
    puts "\n"
    if @hero.died?
      puts 'The hero is dead.'
      puts 'Game over.'
    else
      puts "#{@hero.name} wins."
    end
  end
end
