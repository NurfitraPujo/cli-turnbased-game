require_relative '../lib/Hero'

describe Hero do
  before do
    @hero = Hero.new('Hero test', 100, 50)
    @enemy = Character.new('Enemy test', 100, 20)
  end

  describe '#deflect_attack?' do
    it 'should return true if the deflect_chance is between 1..4 and return false if deflect_chance is 5' do
    end
  end
end
