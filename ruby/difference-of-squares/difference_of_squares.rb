class Squares

  def initialize(square)
    @square = square
  end

  def square_of_sums
    (1..@square).reduce { |sum, square|
      sum += square
    }**2
  end

  def sum_of_squares
    (1..@square).reduce do |sum, square|
      sum += (square**2)
    end
  end

  def difference
    square_of_sums - sum_of_squares
  end
end
