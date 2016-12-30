module BookKeeping
  VERSION = 5 
end

class Gigasecond
  def self.from(time)
      result = time + 10 ** 9
      result
  end
end
