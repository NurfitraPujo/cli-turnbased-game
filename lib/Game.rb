class Game
  attr_accessor :characters, :is_finished, :winner

  def initialize(char1, char2)
    @characters = [char1, char2]
    @is_finished = false
    @winner = nil
  end

  def player_attacking(attacker, attacked)
    attacker.attack(attacked)
    if attacked.die?
      game_finished(attacker, attacked)
    else
      attacked.to_s
    end
  end

  def game_finished(winner, _loser)
    puts "Long live #{winner.name}!"
    @is_finished = true
  end
end
