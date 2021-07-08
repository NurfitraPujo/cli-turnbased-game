require_relative '../lib/Hero'

describe Hero do
  before do
    @hero = Hero.new('Hero test', 100, 50)
    @enemy = Character.new('Enemy test', 100, 20)
  end

  describe '#deflect_attack?' do
    it 'should return true if the deflect_chance is between 1..4 and return false if deflect_chance is 5' do
      deflect_chance = @hero.deflect_probability
      expected = deflect_chance < 5
      expect(@hero.deflect_attack?(deflect_chance)).to eq(expected)
    end
  end

  describe '#receive_damage' do
    it 'should not substract hero hp if he deflect the attack' do
      deflect_chance = @hero.deflect_probability
      expected = deflect_chance < 5 ? @hero.hp : @hero.hp - 20
      @hero.receive_damage(20, deflect_chance)
      expect(@hero.hp).to eq(expected)
    end
  end

  describe '#hero_heals_ally' do
    before do
      @ally = Character.new('Ally test', 30, 20)
    end
    it 'should print valid healing event based on its args' do
      expected = "#{@hero.name} heals #{@ally.name}, restoring 20 points"
      expect(@hero.print_healing_event(@ally)).to eq(expected)
    end
    it 'allies that healed had their hp restored by 20 points' do
      expected = @ally.hp + 20
      expect(@hero.heal(@ally)).to eq(expected)
    end
  end
end
