module BookKeeping
  VERSION = 4
end

module Complement
  def self.of_dna(strand)
    strand.match?(/[^GCTA]/) ? '' : strand.tr('GCTA','CGAU')
  end
end
