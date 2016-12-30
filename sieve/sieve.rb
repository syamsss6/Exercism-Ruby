module BookKeeping
    VERSION = 1
end

class Sieve
def initialize(num)
  @number = num
end

def primes
  aray = []
  (2..@number).each do |i|
  f = 0
    (2 .. i-1).each do |j|
      if i%j == 0
       f = 1
       break
     else
       next
     end
  end
  if f == 0
   aray.push(i)
  end
 end
  aray

end
end
