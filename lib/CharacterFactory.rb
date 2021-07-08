require_relative './Character'
require_relative './Hero'
require_relative './Soldier/Archer'
require_relative './Soldier/Spearman'
require_relative './Soldier/Swordsman'

def create_char(name, hit_point, attack_dmg, options = {})
  return Hero.new(name, hit_point, attack_dmg) if options[:is_hero]
  return Archer.new(name, hit_point, attack_dmg) if options[:is_archer]
  return Swordsman.new(name, hit_point, attack_dmg) if options[:is_swordsman]
  return Spearman.new(name, hit_point, attack_dmg) if options[:is_spearman]

  Character.new(name, hit_point, attack_dmg)
end
