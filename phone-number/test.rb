class PhoneNumber
  attr_accessor :num
begin  def initialize(num)
    @num = num
  end
  def number
    len = @num.length
    return @num[1..len] if @num.length == 11 && @num[0] == '1'
    if @num.length == 10
      return @num
    elsif @num.chars.include?('(.-,)')
       op = @num.gsub(/\W/, '')
       return op
    else @num.length < 10 ||  @num =~ /[a-zA-Z]/ || @num.length > 12 || @num[0]!= 1
      return '0' * 10
    #else
     #  @num.gsub(/\W/, '')
    end
  end  
  def area_code
    @num[0..2]
  end
  def mid_code
    @num[3..5]
  end
  def tail_code
    len = @num.length
    @num[6..len]
  end
  def to_s
    "(#{area_code}) #{mid_code}-#{tail_code}"
  end
end
=begin
  def initialize(num)
    @num = num
  end
  def number
    len = @num.length
    return @num[1..len] if valid
    return @num if valid
    if !valid 
      return '0' * 10
    else
      @num.gsub(/\W/, '')
    end
  end
  def valid
    return true if @num.length == 10
    return true if @num.length == 11 && @num.start_with?('1')
    return false if @num.length < 10 ||  @num =~ /[a-zA-Z]/ || @num.length > 12 || @num[0]!= 1

    false
  end
  def area_code
    @num[0..2]
  end
  def mid_code
    @num[3..5]
  end
  def tail_code
    len = @num.length
    @num[6..len]
  end
  def to_s
    "(#{area_code}) #{mid_code}-#{tail_code}"
  end
=end
end
