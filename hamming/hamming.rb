module BookKeeping
   VERSION = 3 
end



class Hamming
  def self.compute(l1,l2)
    if l1.length != l2.length
      raise ArgumentError
    end
    line1 = l1.split('')
    line2 = l2.split('')
    len = l2.length
    hamm_count = 0
    (0..len).each do |i|
      if line1[i] != line2[i]
       hamm_count = hamm_count + 1
      end
    end
       hamm_count
  end
end
  
