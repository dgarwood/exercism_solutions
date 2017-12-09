module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(new_phrase)
    @phrase = new_phrase
  end

  def word_count
    counts = {}
    words = @phrase.downcase.tr(',:.!&@$%^', ' ').split(' ')
    words.each do |word|
      word.gsub!("'", '') if word.count("'") > 1
      counts[word] = words.count(word)
    end
    counts
  end
end
