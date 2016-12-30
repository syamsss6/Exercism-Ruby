module BookKeeping
  VERSION = 2
end

class Robot
 LETTER = ('A'..'Z').to_a.sample
 def initialize
  r = Random.new
  @name = ''
  @name += LETTER + LETTER + r.rand(100..999).to_s
 end
 
 def name
   @name
 end
 
 def reset
  r = Random.new
  @name = ''
  @name += LETTER + LETTER + r.rand(100..999).to_s
 end
 

end


