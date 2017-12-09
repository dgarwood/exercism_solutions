module BookKeeping
  VERSION = 3
end

module RunLengthEncoding
  def self.encode(string)
    encoded = ""
    prev_char = ''
    count = 1

    string.each_char do |char|
      if char != prev_char
        encoded += "#{count.to_s if count > 1}#{prev_char}"
        count = 1
        prev_char = char
      else
        count += 1
      end
    end

    encoded += "#{count.to_s if count > 1}#{prev_char}"
  end

  def self.decode(string)
    decoded = ""
    count_str = ""

    string.each_char do |char|
      if char.to_i == 0
        decoded += "#{count_str == "" ? char : char * count_str.to_i}"
        count_str = ""
      else
        count_str += char
      end
    end

    decoded
  end
end
