
class Grains
  def self.square(n)
    return 2 ** (n-1)
  end

  def self.total
    sum = square(65) - 1   
    return sum 
  end
end
