class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    sum = 0
    (1..limit - 1).each do |i|
      @multiples.any? do |multiple|
        sum += i if i % multiple == 0
      end
    end
    sum
  end
end
