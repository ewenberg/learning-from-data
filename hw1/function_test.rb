require 'minitest/spec'
require 'minitest/autorun'
require './line'
require './point'
require './function'

describe Function do
  it "should be -1 for points below the line" do
    line = Line.new(0, 1)
    function = Function.new(line)
    function.apply(Point.new(0, 0)).must_equal -1
  end
  
  it "should be +1 for points above the line" do
    line = Line.new(0, 0)
    function = Function.new(line)
    function.apply(Point.new(0.5, 0.5)).must_equal 1
  end
end
