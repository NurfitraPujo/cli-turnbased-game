require_relative '../lib/Character'

describe Character do
  before do
    @character = Character.new('Test Chara', 100, 30)
    @enemy = Character.new('Test Enemy', 100, 30)
  end

  it 'Character created with the right specs' do
    expected = 'Test Chara has 100 hit points and 30 attack damage'
    expect(@character.to_s).to eq(expected)
  end

  describe '#receive_damage' do
    it 'should reduce receiver hp by amount of given damage arg' do
      expected = @character.hp - 30
      @character.receive_damage(30)
      expect(@character.hp).to eq(expected)
    end
  end

  describe '#attack' do
    it 'should print attacking event' do
      expected = "#{@character.name} attacks #{@enemy.name} with #{@character.attack_dmg} damage"
      expect(@character.attacking_event(@enemy)).to eq(expected)
    end
    it 'should reduce enemy hp based on character damage' do
      expected = @enemy.hp - @character.attack_dmg
      @character.attack(@enemy)
      expect(@enemy.hp).to eq(expected)
    end
  end

  describe '#died?' do
    it 'should return true if character hp is below or equal to zero' do
      expected = true
      @character.receive_damage(@character.hp)
      expect(@character.died?).to eq(expected)
    end
  end
end
