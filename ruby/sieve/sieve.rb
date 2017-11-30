module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(number)
    @num = number
    @primes = []
    @values = (2..@num).to_a
  end

  def primes
    until @values.empty?
      @values = @values.reject{ |n| n % @values[0] == 0 && n / @values[0] > 1 }
      @primes << @values.shift
    end
    @primes
  end
end
