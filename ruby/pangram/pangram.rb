module BookKeeping
  VERSION = 6
end

module Pangram
  def self.pangram?(text)
    pangram = true
    ('a'..'z').each do |letter|
      return if !text.downcase.include?(letter)
    end
    pangram
  end
end
