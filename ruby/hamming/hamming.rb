module Hamming
  def self.compute(source, diff)
    raise ArgumentError, "strands not same length" unless source.length == diff.length
    (0..(source.length - 1)).count do |i|
      source[i] != diff[i]
    end
  end
end

module BookKeeping
  VERSION = 3
end
