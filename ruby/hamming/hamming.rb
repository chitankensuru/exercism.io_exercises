class Hamming
  def self.compute(dna_strand_a, dna_strand_b)
    distance = 0
    dna_zip = dna_strand_a.chars.zip(dna_strand_b.chars)
    dna_zip.count do |a, b|
      distance += 1 if a != b
    end
    return distance
  end
end