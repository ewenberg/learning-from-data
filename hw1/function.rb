class Function
  
  def initialize(line)
    @line = line
  end
  
  def apply(point)
    line_y = @line.evaluate(point.x)
    point_y = point.y
    if point_y - line_y <= 0
      # the point lies below the line
      return -1
    else
      # the point lies above the line
      return 1
    end
  end
end