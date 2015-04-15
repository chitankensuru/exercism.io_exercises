class Hamming
  def self.compute(dna_strand_a, dna_strand_b)
    dna_strand_a.chars.zip(dna_strand_b.chars).count do |a, b|
       a != b
    end
  end
end