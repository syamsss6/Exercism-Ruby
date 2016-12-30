class Bob
  def self.hey(text) 
    if text == text.upcase and text =~ /[A-Z]/
      return 'Whoa, chill out!'
    elsif text.end_with?("?")
      return 'Sure.'
    elsif text.strip() == ''
      return 'Fine. Be that way!'
    else
      return 'Whatever.'
    end
   
  end
end
