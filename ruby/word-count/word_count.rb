module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(new_phrase)
    @counts = Hash.new(0)
    new_phrase.downcase.scan(/\b[\w']+\b/) { |word| @counts[word] += 1 }
  end

  def word_count
    @counts
  end
end
