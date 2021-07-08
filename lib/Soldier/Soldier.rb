require_relative '../Character'

class Soldier < Character
  def fleeing?
    fleeing_chance = rand(1..4)
    fleeing_chance < 3 && @hp < 50
  end
end
