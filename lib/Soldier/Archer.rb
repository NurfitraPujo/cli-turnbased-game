require_relative './Soldier.rb'

class Archer < Soldier
  def print_attacking_event(other_player)
    puts "#{@name} shot #{other_player.name} with #{@attack_dmg} damage"
  end
end