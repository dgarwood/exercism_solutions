module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(number)
    @num = number
  end

  def primes
    @primes = []
    @values = (3..@num).step(2).to_a

    # only sieve if we have @values
    # and stop when first_term^2 > last_term (nothing left to remove)
    # ie if @num = 100, stop at 11 since 11^2 = 121
    while @values.any? && @values[0]**2 <= @values[-1]
      @values = @values.reject{ |n| n % @values[0] == 0 && n / @values[0] > 1 }
      @primes << @values.shift
    end

    @primes += @values # all remaining @values are @primes
    @num < 2 ? @primes : @primes.unshift(2) # don't forget 2
  end
end
