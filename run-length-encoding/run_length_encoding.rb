module BookKeeping
  VERSION = 2
end

class RunLengthEncoding
  def self.encode(text)
    op = ''
    text.chars.chunk { |n| n}.each {|char, array|
     count = array.count > 1 ? array.count : nil
     op << "#{count}#{char}"
    }
    return op
  end

  def self.decode(text)
    op = ''
    text.scan(/(\d*)(\D)/).each do |count, char|
      if count  == ""
         times = 1
      else
      times = count
      end
      chars = char
      op << chars * times.to_i
    end
    op 
  end
end
