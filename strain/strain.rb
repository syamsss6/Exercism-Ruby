class Array
  def keep
    keep = []
    each {|e| keep << e if yield(e)} 
    keep
  end

  def discard
     discard = []
     each {|i| discard<< i unless yield(i)}
     discard
  end
end
