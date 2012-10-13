require './point'

class TrainingPoint
  attr_reader :point, :y
  
  def initialize(point, y)
    @point = point
    @y = y
  end
  
end
