def convert(number)
   n = number.to_i
   facts = []
   for i in 1..n do
    if n%i == 0
     facts << i
    end
    end
    puts facts
   
   if facts.include?(5)
    
    puts "Plang"
   end
   if facts.include?('3')
    puts "Pling"
   end
   if facts.include?('7')
    puts 'Plong'
   end
#   if facts.include?('3') and facts.include?('3')
#    return "PlingPlang"
#   end

end


convert(10)


