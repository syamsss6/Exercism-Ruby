module BookKeeping
  VERSION = 3
end

class Pangram
  def self.pangram?(str)
    str1 = str.downcase
    array1 = str1.chars.to_a
    array2 = ("a".."z").to_a
    array3 = array2 - array1
    if array3.empty?
     return TRUE
    else
     return FALSE
    end
  end
end
