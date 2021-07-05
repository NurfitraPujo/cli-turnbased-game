class Character
    attr_accessor :name, :hp, :attack_dmg
    def initialize(name, hp, attack_dmg)
        @name = name
        @hp = hp
        @attack_dmg = attack_dmg
    end

    def substract_hp(amount)
        @hp = @hp - amount
    end

    def attack_other(char)
        char.substract_hp(@attack_dmg)
        puts "#{@name} attacks #{char.name} with #{@attack_dmg}"
    end

    def introduce()
        puts "#{@name} has #{@hp} hit points and #{@attack_dmg} attack damage"
    end
end