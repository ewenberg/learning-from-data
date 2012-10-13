require 'minitest/spec'
require 'minitest/autorun'
require './point'

describe Point do
  it "should require x and y" do
    test_subject = Point.new(0.20, 0.50)
    test_subject.x.must_equal 0.20
    test_subject.y.must_equal 0.50
  end
  
  it "#=" do
    p1 = Point.new(1, 2)
    p2 = Point.new(1, 2)
    assert(p1 == p2, "p1 and p2 should be equal")
  end
  
  it "#random" do
    p1 = Point.random
    assert(p1.x >= -1.0)
    assert(p1.x <= 1.0)
    assert(p1.y >= -1.0)
    assert(p1.y <= 1.0)
  end
end