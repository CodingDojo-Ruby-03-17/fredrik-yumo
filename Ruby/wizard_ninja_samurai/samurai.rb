require_relative 'human'

class Samurai < Human
  @@num_samurai = 0
  def initialize
    super
    @health = 200
    @@num_samurai += 1
  end

  # attacks another object
  # if said object is not dead, its health decreases to 0
  def death_blow(obj)
    if !obj.dead?
      obj.health = 0
    end
    self
  end

  # increases health back to 200
  def meditate
    @health = 200
    self
  end

  # displays how many samurai there are
  def how_many
    puts "There are #{@@num_samurai} samurai"
  end
end

# jin = Samurai.new
# fred = Human.new
# fred.attack(jin).attack(jin)
# jin.death_blow(fred).display_all
# fred.display_all
# jin.meditate.display_all
# gon = Samurai.new
# jin.how_many
