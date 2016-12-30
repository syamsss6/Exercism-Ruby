module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(num)
   raise ArgumentError if num < 1
    count = 0
    number = 2
    until count == num
     count += 1 if find_primes(number)      
     number += 1
    end
     number -= 1
  end
  def self.find_primes(number)
   raise ArgumentError if number < 2
    prime = true
    (2 .. number/2).each do |i|
      if number % i == 0
         prime  = false
         break
       end
     end
     prime
  end
end
