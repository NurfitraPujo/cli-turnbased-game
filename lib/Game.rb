class Game
    attr_accessor :characters, :isFinished, :winner

    def initialize(char1, char2)
        @characters = [char1, char2]
        @isFinished = false
        @winner = nil
    end

    def player_attacking(attacker, attacked)
        attacker.attack_other(attacked)
    end

    def check_player_health
        char1 = @characters[0]
        char2 = @characters[1]
        if char1.hp == 0
            game_finished(char2, char1)
        elsif char2.hp == 0
            game_finished(char1, char2)
        end
    end

    def game_finished(winner, loser)
        puts "#{loser.name} is dead."
        puts "#{winner.name} wins!!"
        @isFinished = true
    end
end