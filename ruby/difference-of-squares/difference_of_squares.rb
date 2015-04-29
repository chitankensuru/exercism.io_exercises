class Squares

  def initialize(square)
    @square = (1..square)
  end

  def square_of_sums
    @square.reduce(:+)**2
  end

  def sum_of_squares
    @square.reduce{ |sum, square| sum += (square**2) }
  end

  def difference
    square_of_sums - sum_of_squares
  end
end
