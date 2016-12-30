module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(number)
   n = number.to_i
   if n%3 ==0 and n%5 ==0 and n%7 ==0
     return "PlingPlangPlong"
   elsif n%3 ==0 and n%5 ==0
     return "PlingPlang"
   elsif n%3 ==0 and n%7 ==0
     return "PlingPlong"
   elsif n%5 == 0 and n%7 ==0
     return "PlangPlong"
   elsif n%3 == 0
     return "Pling"
   elsif n%5 == 0
     return "Plang"
   elsif n%7 == 0 
     return "Plong"
    else
     return n.to_s
   end
  end
end
