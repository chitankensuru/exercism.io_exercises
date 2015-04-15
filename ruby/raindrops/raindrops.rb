class Raindrops
  def self.convert(num)
    output = String.new
    output << 'Pling' if num.modulo(3).zero?
    output << 'Plang' if num.modulo(5).zero?
    output << 'Plong' if num.modulo(7).zero?
    output << num.to_s if output.empty?
    output
  end
end

