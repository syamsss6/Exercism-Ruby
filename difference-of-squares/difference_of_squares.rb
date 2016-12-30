module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(number)
   @number = number
  end

  def square_of_sum
   sequare = 0
   (0..@number).each do |i|
    sequare += i
   end
    return sequare ** 2
  end

  def sum_of_squares
   sum = 0
   (0..@number).each do |i|
    sum += i ** 2
    end
   return sum
  end

  def difference
    square_of_sum - sum_of_squares
  end


end
