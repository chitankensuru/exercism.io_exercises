class Complement

  def self.of_dna(dna)
    dict = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
    raise(ArgumentError, "Incorrect DNA strands") unless dict.key?(dna)
    dna.gsub(/[GCTA]/,dict)
  end

  def self.of_rna(rna)
    dict = { 'C' => 'G', 'G' => 'C', 'A' => 'T', 'U' => 'A' }
    raise(ArgumentError, "Incorrect RNA strands") unless dict.key?(rna)
    rna.gsub(/[CGAU]/,dict)
  end
end