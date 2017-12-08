module BookKeeping
  VERSION = 4
end

# updated based on feedback from tnordloh and tenebrousedge
class Squares
  def initialize(value)
    @value = value
  end

  def square_of_sum
    @square_of_sum ||= ((@value * (@value + 1))/2)**2
  end

  def sum_of_squares
    # formula from
    # https://trans4mind.com/personal_development/mathematics/series/sumNaturalSquares.htm
    @sum_of_squares ||= (@value**3.to_f / 3 + @value**2.to_f / 2 + @value.to_f / 6).round
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
