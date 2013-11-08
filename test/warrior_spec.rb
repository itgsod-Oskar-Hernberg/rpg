require 'rspec'
require_relative '../lib/warrior'

describe 'warrior' do

  it 'should have a  name and a weapon' do
    w = Warrior.new('Baldrig', 'Sword')
    w.weapon.should == 'Sword'
    w.name.should == 'Baldrig'
    w2 = Warrior.new('Abyss', 'Abyssal-blade')
    w2.weapon.should == 'Abyssal-blade'
    w2.name.should == 'Abyss'
  end
end