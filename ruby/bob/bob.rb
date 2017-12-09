module BookKeeping
  VERSION = 1
end

module Bob
  @phrase = ""

  def self.hey(phrase)
    @phrase = phrase.strip

    case
    when yelling?
      "Whoa, chill out!"
    when question?
      "Sure."
    when not_speaking?
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end

  private

  def self.not_speaking?
    @phrase.scan(/\w+/).empty?
  end

  def self.question?
    @phrase[-1] == '?'
  end

  def self.yelling?
    @phrase.scan(/[a-z]+/).empty? && @phrase.scan(/[A-Z]+/).count > 0
  end
end
