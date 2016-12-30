module BookKeeping
  VERSION = 1
end

class Trinary
  def initialize(tri)
    @tri = tri
  end
  def to_decimal 
    i = 0
    sum = 0
    return 0 if @tri =~ /[a-zA-z\D3-9]/
    @tri = @tri.to_i
    while @tri > 0
      num = @tri % 10
      @tri = @tri / 10
      sum = sum + (3**i) * num
      i += 1
    end
    return sum
  end
end
