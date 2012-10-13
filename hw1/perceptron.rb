require './point'
require './line'

class Perceptron
  def initialize(n, f)
    @n = n
    @f = f
    
    @weights = []
    @points = []
    for i in 0..@n-1 do
      @weights[i] = 0
      @points[i] = Point.random
    end
    puts "Points: #{@points.inspect}"
  end

  def run
    iterations = 0
    misclassified = []
    begin
      iterations += 1
      puts "Iteration: #{iterations}"
      puts "Weights: #{@weights}"
      misclassified = find_misclassified
      puts "Misclassified: #{misclassified}"
      if misclassified.size > 0
        point_index = misclassified[0]
        puts "fixing #{point_index}"
        if @weights[point_index] == 0
          @weights[point_index] = 1
        else
          @weights[point_index] = 0
        end
      end
    end until misclassified.size == 0
  end
  
  def find_misclassified
    result = []
    @points.each_with_index do |p, i|
      if @weights[i] == 0 and @f.evaluate_point(@points[i]) == 1
        result << i
      elsif @weights[i] == 1 and @f.evaluate_point(@points[i]) == -1
        result << i
      end
    end
    result
  end
end

p1 = Point.random
p2 = Point.random
f = Line.from_points(p1, p2)
puts "Target function: #{f}"

p = Perceptron.new(10, f)
p.run
