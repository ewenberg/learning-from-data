class Line
  attr_reader :bias, :x1, :x2
  
  def initialize(bias, x1, x2)
    @bias = bias
    @x1 = x1
    @x2 = x2
  end
  
  def evaluate(point)
    result = bias + (x1 * point.x1) + (x2 * point.x2)
  end
end
