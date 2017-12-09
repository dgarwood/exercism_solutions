module BookKeeping
  VERSION = 3
end

module Year
  def self.leap?(year)
    year % 100 == 0 ? year % 400 == 0 : year % 4 == 0
  end
end
