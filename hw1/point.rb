class Point
  attr_accessor :x, :y
  
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  def ==(other)
    self.x == other.x and self.y == other.y
  end
  
  def self.random
    Point.new(random_number, random_number)
  end
  
  def self.random_number
    r1 = rand
    sign = 1.0
    if rand <= 0.5
      sign = -1.0
    end
    rand * sign
  end
  
  def to_s
    "[%1.2f, %1.2f]" % [@x, @y]
  end
end
