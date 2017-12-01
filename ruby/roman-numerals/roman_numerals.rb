require 'pry-byebug'

module BookKeeping
  VERSION = 2
end

class Integer
  ROMAN_VALUES = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }.freeze

  def to_roman
    value = self.dup
    string = ""
    while value > 0
      conversion = ROMAN_VALUES.select{|k,v| value >= k}.first
      value -= conversion[0]
      string += conversion[1]
    end
    string
  end
end
