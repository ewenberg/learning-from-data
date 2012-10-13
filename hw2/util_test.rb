require 'minitest/spec'
require 'minitest/autorun'
require './util'

describe Util do  
  it "#random" do
    r = Util.random
    assert(r >= -1.0)
    assert(r <= 1.0)
  end
end