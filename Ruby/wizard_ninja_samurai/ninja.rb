require_relative 'human'

class Ninja < Human
  def initialize
    super
    @stealth = 175
  end

  # attacks another object
  # increases own health by 10
  def steal(obj)
    if !obj.dead?
      attack(obj)
      @health += 10
    end
    self
  end

  # decreases health by 15
  def get_away
    @health -= 15
    self
  end
end

# naruto = Ninja.new
# fred = Human.new
# naruto.steal(fred).steal(fred).get_away.display_all
# fred.display_all
