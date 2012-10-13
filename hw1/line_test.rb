require 'minitest/spec'
require 'minitest/autorun'
require './line'
require './point'

describe Line do
  it "should handle 0 point" do
    x = Point.new(0, 0)
    test_subject = Line.from_points(x, x)
    test_subject.slope.must_equal 1
    test_subject.y_intercept.must_equal 0
  end
  
  it "should handle 2 points" do
    p1 = Point.new(1, 2)
    p2 = Point.new(3, 3)
    test_subject = Line.from_points(p1, p2)
    test_subject.slope.must_equal 0.5
    test_subject.y_intercept.must_equal 1.5
  end
  
  it "should be -1 for points below the line" do
    line = Line.new(0, 1)
    line.evaluate_point(Point.new(0, 0)).must_equal -1
  end
  
  it "should be +1 for points above the line" do
    line = Line.new(0, 0)
    line.evaluate_point(Point.new(0.5, 0.5)).must_equal 1
  end
end
