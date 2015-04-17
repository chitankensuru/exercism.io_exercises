class Raindrops
  SOUNDS = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
  }

  def self.convert(num)
    rain_song = String.new
    SOUNDS.each do |prime, sound|
      rain_song << sound if num.modulo(prime).zero?
    end
    rain_song.empty? ? num.to_s : rain_song
  end
end

