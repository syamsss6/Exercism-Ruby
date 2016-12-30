class PhoneNumber
  attr_accessor :number
  def initialize(number)
    @number = validate(number)
  end
  def area_code
    number[0..2]
  end
  def mid_code
    number[3..5]
  end
  def tail_code
    len = number.length
    number[6..len]
  end
  def to_s
    "(#{area_code}) #{mid_code}-#{tail_code}"
  end
  def validate(number)
    return '0' * 10 if number.match(/[a-zA-Z]/)
    number  = number.gsub(/[^0-9]/, '')
    check(number)
  end
  def check(number)
    if valid(number)
      number[/(\d{10})\z/, 1]
    else
      return '0' * 10
    end
  end
  def valid(number)
    return true if number.length == 10
    return true if number.length == 11 && number.start_with?('1')
    false
  end
end
