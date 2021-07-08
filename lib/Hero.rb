require_relative './Character'

class Hero < Character
  def deflect_attack?
    deflect_chance = rand(1..5)
    deflect_chance < 5
  end

  def heal_allies(ally)
    print_healing_event(ally)
    ally.hp += 20
  end

  def print_healing_event(ally)
    puts "#{@name} heals #{ally.name}, restoring 20 points"
  end

  def receive_damage(damage)
    if deflect_attack?
      puts "#{@name} deflected the attack"
    else
      super(damage)
    end
  end
end
