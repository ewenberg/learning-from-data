require './util'

class Point
  attr_accessor :x1, :x2
  
  def initialize(x1, x2)
    @x1 = x1
    @x2 = x2
  end
  
  def ==(other)
    self.x1 == other.x1 and self.x2 == other.x2
  end
  
  def self.random
    Point.new(Util.random, Util.random)
  end
  
  def to_s
    "[%1.2f, %1.2f]" % [@x1, @x2]
  end
end
