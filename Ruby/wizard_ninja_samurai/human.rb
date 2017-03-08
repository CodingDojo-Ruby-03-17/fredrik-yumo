class Human
  attr_accessor :health, :strength, :intelligence, :stealth
  def initialize
    @health = 100
    @strength = 3
    @intelligence = 3
    @stealth = 3
  end

  def display_all
    puts "Health = #{@health}"
    puts "Strength = #{@strength}"
    puts "Intelligence = #{@intelligence}"
    puts "Stealth = #{@stealth}"
  end

  # attacks another object
  # if said object inherits from the Human class and is not dead, its health is decreased
  def attack(obj)
    if obj.class.ancestors.include?(Human) && !obj.dead?
      obj.health -= 10
    end
    self
  end

  # tests whether this human still has health or not
  def dead?
    @health == 0
  end
end

# fred = Human.new
# tom = Human.new
# fred.attack(tom).attack(tom)
# tom.display_all
