module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(new_phrase)
    @phrase = new_phrase
  end

  def word_count
    counts = {}
    words = @phrase.downcase.scan(/\b[\w']+\b/)
    words.each do |word|
      counts[word] = words.count(word)
    end
    counts
  end
end
