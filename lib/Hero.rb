require_relative './Character'

class Hero < Character

  def deflect_attack?
    deflect_chance = rand(1..5)
    deflect_chance < 5
  end

  def receive_damage(damage)
    if deflect_attack?
      puts "#{@name} deflected the attack"
    else
      super(damage)
    end
  end
end
