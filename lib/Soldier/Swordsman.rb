require_relative './Soldier'

class Swordsman < Soldier
  def print_attacking_event(other_player)
    puts "#{@name} slashed #{other_player.name} with #{@attack_dmg} damage"
  end
end
