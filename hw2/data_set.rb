require './training_point'

class DataSet
  attr_reader :points
  
  def initialize(count, f)
    @count = count
    @f = f
    
    @points = []
    for i in 0..count-1 do
      p = Point.random
      @points << TrainingPoint.new(p, @f.evaluate(p))
    end
  end
  
  def sample(size)
    results = []
    for i in 0..size-1
      results << @points[(rand*1000).to_i]
    end
    results
  end
end

