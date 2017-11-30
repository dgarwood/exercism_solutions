module BookKeeping
  VERSION = 6
end

module Pangram
  def self.pangram?(text)
    'a'.upto('z') { |l| return false unless text.downcase.include?(l) }
  end
end
