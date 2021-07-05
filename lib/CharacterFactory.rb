require_relative './Character'
require_relative './CharacterWithSword'

def create_char(name, hit_point, attack_dmg)
  Character.new(name, hit_point, attack_dmg)
end
