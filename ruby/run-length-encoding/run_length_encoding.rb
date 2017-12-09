module BookKeeping
  VERSION = 3
end

module RunLengthEncoding
  def self.encode(string)
    string.chars.chunk { |n| n }.map { |letter, sequence|
      count = sequence.size > 1 ? sequence.size : ""
      [count, letter]
    }.join
  end

  def self.decode(string)
    string.gsub(/(\d{1,})(.)/) { $1 == "" ? $2 : $2 * $1.to_i }
  end
end
