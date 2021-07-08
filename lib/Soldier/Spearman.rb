require_relative './Soldier'

class Spearman < Soldier
  def print_attacking_event(other_player)
    puts "#{@name} thrusted #{other_player.name} with #{@attack_dmg} damage"
  end
end
