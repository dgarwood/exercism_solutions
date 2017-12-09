module BookKeeping
  VERSION = 1
end

class Bob
  @phrase = ""

  def self.hey(phrase)
    @phrase = phrase
    return "Fine. Be that way!" if !speaking? && !question?
    return "Sure." if question? && !yelling?
    return "Whoa, chill out!" if yelling?
    "Whatever."
  end

  def self.speaking?
    @phrase.scan(/\w+/).count > 0
  end

  def self.question?
    @phrase.strip[-1] == '?'
  end

  def self.yelling?
    @phrase.scan(/[a-z]+/).empty? && @phrase.scan(/[A-Z]+/).count > 0
  end
end
