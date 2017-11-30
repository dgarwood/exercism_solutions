module BookKeeping
  VERSION = 4
end

class Squares
  def initialize(value)
    @value = value
  end

  def square_of_sum
    (1..@value).sum**2
  end

  def sum_of_squares
    (1..@value).sum { |i| i**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
