class Complement
  DNA_TO_RNA = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
  RNA_TO_DNA = DNA_TO_RNA.invert

  def self.of_dna(strand)
    complement(strand, DNA_TO_RNA)
  end

  def self.of_rna(strand)
    complement(strand, RNA_TO_DNA)
  end

  private
    def self.complement(strand, complement_hash)
      strand.chars.each_with_object("") do |nucleotide, transcription|
        transcription << complement_hash.fetch(nucleotide)
      end
    rescue KeyError => error
      raise ArgumentError, error
    end
end