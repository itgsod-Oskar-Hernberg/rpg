require 'rspec'
require_relative '../lib/warrior'

describe 'warrior' do

  it 'should have a  name and a weapon' do
    w = Warrior.new('Baldrig')
    w.name.should == 'Baldrig'

    w2 = Warrior.new('Abyss')
    w2.name.should == 'Abyss'
  end

  it 'should not have a weapon' do
    w = Warrior.new("")
    expect {w.weapon}.to raise_error NotImplementedError
  end

  it 'should not have hp' do
    w = Warrior.new("")
    expect {w.hp}.to raise_error NotImplementedError
  end
end

describe 'SpearWarrior' do
  it 'should have a spear and a name' do
    sw = SpearWarrior.new('Jack')
    sw.weapon.should == 'spear'
    sw.name.should == 'Jack'
  end

  it 'should have 10hp' do
    sw = SpearWarrior.new('mackan')
    sw.hp == 10
  end
end

describe 'SwordWarrior' do
  it 'should have a sword and a name' do
    sw = SwordWarrior.new('Kamina')
    sw.name.should == 'Kamina'
    sw.weapon.should == 'sword'
  end

  it 'should have 15 hp' do
    sw = SwordWarrior.new('subwaymaster223')
    sw.hp.should == 15
  end
end