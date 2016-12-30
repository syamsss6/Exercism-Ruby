class ETL
  def self.transform(old)
    result = {}
    old.each do|k,v|
      v.each do |i|
        result[i.downcase] = k
      end 
    end
    result
  end
end

