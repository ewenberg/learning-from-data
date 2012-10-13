class Util
  def self.random
    r1 = rand
    sign = 1.0
    if rand <= 0.5
      sign = -1.0
    end
    rand * sign
  end
end
