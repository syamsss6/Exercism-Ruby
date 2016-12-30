module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(word)
    @word = word
  end 
  def word_count()
    wd = @word.downcase.gsub(/[!;,@%&$#:^."]+| '|' /,' ')  
    words = wd.split(/[\s]+/)    
    frequency = Hash.new(0)
    words.each { |word| frequency[word] += 1 }
    return frequency
  end     
end
