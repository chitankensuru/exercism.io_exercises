class Complement
  DNA_TO_RNA = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
  RNA_TO_DNA = DNA_TO_RNA.invert

  def self.of_dna(dna)
    complement(dna, DNA_TO_RNA)
  end

  def self.of_rna(rna)
    complement(rna, RNA_TO_DNA)
  end

  private
    def self.complement(nucleotide, complement_hash)
      raise(ArgumentError, "Incorrect RNA strands") unless complement_hash.key?(nucleotide)
      nucleotide.gsub(/[#{complement_hash.keys.join}]/, complement_hash)
    end
end