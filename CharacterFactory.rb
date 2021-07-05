require_relative './Character.rb'

def create_char(name, hp, attack_dmg)
    return Character.new(name, hp, attack_dmg)
end