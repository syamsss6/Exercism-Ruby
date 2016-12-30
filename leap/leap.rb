module BookKeeping
  VERSION = 2
end

class Year
  def self.leap?(year)
    if (year % 4 == 0 and (year % 400 == 0 or year % 100!= 0))
      year
    end
  end
end
