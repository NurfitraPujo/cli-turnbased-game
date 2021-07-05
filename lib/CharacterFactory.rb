require_relative './Character'
require_relative './Hero'

def create_char(name, hit_point, attack_dmg, is_hero = nil)
  return Hero.new(name, hit_point, attack_dmg) if is_hero

  Character.new(name, hit_point, attack_dmg)
end
