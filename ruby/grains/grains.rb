module BookKeeping
  VERSION = 1
end

module Grains
  TOTAL_SQUARES = 64

  def self.square(num)
    raise ArgumentError unless num <= TOTAL_SQUARES && num > 0
    2**(num - 1)
  end

  def self.total
    2**TOTAL_SQUARES - 1
  end
end
