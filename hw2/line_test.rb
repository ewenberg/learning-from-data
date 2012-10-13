require 'minitest/spec'
require 'minitest/autorun'
require './line'
require './point'

describe Line do
  it "should handle 0 point" do
    test_subject = Line.new(2, 0, 0)
    test_subject.bias.must_equal 2
  end
  
  it "should be able to evaluate a point" do
    test_subject = Line.new(2, 1, 1)
    test_subject.evaluate(Point.new(0, 0, 0)).must_equal 0
  end
end
