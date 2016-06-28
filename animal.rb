module Flight

  def fly
    puts "I'm a #{self.class.name}, I'm flying!"
  end
end


class Animal

  include Flight

  def initialize(num_leg, vertebrae, warmblooded, color = false)
    @numleg = num_leg
    @vertebrae = vertebrae
    @warmblooded = warmblooded
    @color = color
  end

end

class Mammal < Animal

  def initialize(a = 4, color)
    super(a, true, true, color)
  end

end

class Amphibian < Animal

  def initialize(a, c)
    super(a, true, false, c)
  end

end

class Bird < Animal

  def initialize(a = 2, c)
    super(a, true, true, c)
  end

end

class Primates < Mammal

  def initialize(num_leg = 2, color = "brown")
    super(num_leg, color)
  end

end

class Chimps < Primates

  def initialize(color = "brown")
    super(2, color)
    include Flight
  end

end

class Bat < Mammal

  def initialize(color = "black")
    super(num, color)
  end

end

class Frog < Amphibian

  def initialize(num_leg = 4, color)
    super(num_leg, true, false, color)
  end

end

class Parrot < Bird

  def initialize(color)
    super(2, true, true, color)
  end

end
