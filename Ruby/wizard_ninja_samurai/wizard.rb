require_relative 'human'

class Wizard < Human
  def initialize
    super
    @health = 50
    @intelligence = 25
  end

  # increases health by 10
  def heal
    @health += 10
    self
  end

  # attacks another object
  # if said object is not dead, its health is decreased by 20
  def fireball(obj)
    if !obj.dead?
      obj.health -= 20
    end
    self
  end
end

# merlin = Wizard.new
# fred = Human.new
# merlin.fireball(fred).fireball(fred)
# fred.display_all
# fred.attack(merlin).attack(merlin).attack(merlin)
# merlin.heal.display_all
