require_relative 'mammal'

class Dog < Mammal
  def pet
    @health += 5
    self
  end

  def walk
    @health -= 1 unless @health == 0
    self
  end

  def run
    @health -= 10 unless @health == 0
    self
  end
end

dog = Dog.new
dog.walk.walk.walk.run.run.pet.display_health
