module BookKeeping
  VERSION = 3
end

class Raindrops
  SOUNDS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }.freeze

  def self.convert(drops)
    heard = SOUNDS.map{ |factor, sound| drops % factor == 0 ? sound : "" }.join
    heard.empty? ? drops.to_s : heard
  end
end
