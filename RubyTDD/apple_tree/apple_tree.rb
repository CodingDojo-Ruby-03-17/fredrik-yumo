class AppleTree
  attr_accessor :age
  attr_reader :height, :apple_count

  def initialize
    @age = 0
    @height = 1
    @apple_count = 0
  end

  def year_gone_bye
    @height = @height + (@height * 0.10)
    @apple_count = @apple_count + 2 unless (@age < 3 || @age > 10)
    @age = @age + 1
  end

  def pick_apples
    @apple_count = 0
  end
end
