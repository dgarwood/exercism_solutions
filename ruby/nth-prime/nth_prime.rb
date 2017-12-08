module BookKeeping
  VERSION = 1
end

module Prime
  def self.nth(num)
    raise ArgumentError if num == 0
    # multiply by 20 to get enough values to return the prime we need
    # can't explain why 20 works for this,
    # but it performs much better than num^2 or num^1.5
    self.primes(num * 20)[num-1]
  end

  def self.primes(max)
    @primes = []
    @values = (3..max).step(2).to_a

    # only sieve if we have @values
    # and stop when first_term^2 > last_term (nothing left to remove)
    # ie if @max = 100, stop at 11 since 11^2 = 121
    while @values.any? && @values[0]**2 <= @values[-1]
      @values = @values.reject{ |n| n % @values[0] == 0 && n / @values[0] > 1 }
      @primes << @values.shift
    end

    @primes += @values # all remaining @values are @primes
    max < 2 ? @primes : @primes.unshift(2) # don't forget 2
  end
end
