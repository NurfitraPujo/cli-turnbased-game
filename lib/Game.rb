class Game
  attr_accessor :characters, :is_finished, :winner

  def initialize(char1, char2)
    @characters = [char1, char2]
    @is_finished = false
    @winner = nil
  end

  def player_attacking(attacker, attacked)
    attacker.attack(attacked)
  end

  def check_player_health
    char1 = @characters[0]
    char2 = @characters[1]
    if char1.hp.zero?
      game_finished(char2, char1)
    elsif char2.hp.zero?
      game_finished(char1, char2)
    end
  end

  def game_finished(winner, loser)
    puts "#{loser.name} is dead."
    puts "Long live #{winner.name}!"
    @is_finished = true
  end
end
