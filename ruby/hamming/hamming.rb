module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand_a, strand_b)
    if strand_a.size != strand_b.size
      raise ArgumentError
    end

    strands = strand_a.chars.zip(strand_b.chars)
    distance = strands.reject {|dna_a, dna_b| dna_a == dna_b }

    distance.size
  end
end
