module BookKeeping
  VERSION = 2
end

class Anagram
  def initialize(word)
    @word = word.downcase
    @letters = @word.chars.sort
  end

  def match(words)
    words.select { |i| (i.downcase.chars.sort == @letters) && (i.downcase != @word) }
    
  end
end
