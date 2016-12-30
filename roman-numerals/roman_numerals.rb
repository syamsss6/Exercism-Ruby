module BookKeeping
  VERSION = 2
end

class Integer
  def to_roman
    i = self
    str = ''
    roman.each do |number, roman_num|
      while i >= number
        str << roman_num
        i -= number
      end
    end
    str
  end

  def roman
    {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }
  end
end
