class Hamming
  def self.compute(dna_strand_a, dna_strand_b)
    dna_zip = dna_strand_a.chars.zip(dna_strand_b.chars)
    dna_zip.count do |a, b|
       a != b
    end
  end
end