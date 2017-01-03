def cripto(word)
 seg = []
 w = word.downcase.gsub(/[\W\d]/, '')
 #puts w
 length = Math.sqrt(w.length).ceil
 #puts length
 seg = w.scan(/.{1,#{length}}/).to_a
 #puts seg
 a = seg.map(&:chars)
 puts a.max_by(&:size).size.times.map { a.map { |e| e.shift || ' ' }.join.rstrip }.join(' ')

end
wd = gets
cripto(wd)
#cripto('If man was meant to stay on the ground, god would have given us roots.')
