module BookKeeping
  VERSION = 3
end

class Binary
  def self.to_decimal(binary)
   raise ArgumentError if binary =~ /[a-z2-9]/
   binary = binary.to_i
   base = 1
   decimal = 0
   while binary > 0 do
     remaining = binary % 10
     decimal = decimal + remaining * base
     base = base * 2
     binary = binary / 10
   end
    decimal
  end
end
