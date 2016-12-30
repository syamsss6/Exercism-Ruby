class PrimeFactors
  def self.for(number)
    result = []
    i = 2
    while i <= number
      if number % i == 0
        result << i
        number /= i
      else
        i += 1
      end
    end
    result
  end
end
