class Line
  attr_reader :slope, :y_intercept
  
  def initialize(slope, y_intercept)
    @slope = slope
    @y_intercept = y_intercept
  end
  
  def self.from_points(p1, p2)
    diff_x = p2.x - p1.x
    diff_y = p2.y - p1.y
    
    if diff_x == 0
      slope = 1
    else
      slope = diff_y.to_f / diff_x.to_f
    end
    y_intercept = p1.y - (slope * p1.x)
    Line.new(slope, y_intercept)
  end
  
  def evaluate(x_val)

  end
  
  def to_s
    "y = %8.2fx + %8.2f" % [@slope, @y_intercept]
  end
  
  def evaluate_point(point)
    line_y = (@slope * point.x) + @y_intercept
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

