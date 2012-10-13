require 'minitest/spec'
require 'minitest/autorun'
require './data_set'
require './line'

describe DataSet do

  it "should accept a population size and a line" do
    test_subject = DataSet.new(1000, Line.new(1, 2, 3))
  end
  
  it "should generate random samples from the population" do
    test_subject = DataSet.new(1000, Line.new(1, 2, 3))
    sample = test_subject.sample(10)
    sample.size.must_equal 10
    assert sample[0].instance_of? TrainingPoint
  end
end
