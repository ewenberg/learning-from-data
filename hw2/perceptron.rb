require './util'
require './line'
require './data_set'

f = Line.new(1, Util.random, Util.random)
data_set = DataSet.new(1000, f)

sample = data_set.sample(10)
weight = Line.new(0, 0, 0)