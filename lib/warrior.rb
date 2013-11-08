class Warrior

  attr_reader :name

  def initialize(name)
    @name = name

  end

  def hp
    raise NotImplementedError
  end

  def weapon
    raise NotImplementedError
  end
end

class SpearWarrior < Warrior

  def initialize(name)
    super(name)
  end

  def weapon
    'spear'
  end

  def hp
    10
  end
end

class SwordWarrior < Warrior

  def initialize(name)
    super(name)
  end

  def weapon
    'sword'
  end

  def hp
    15
  end
end