module BookKeeping
  VERSION = 4
end

VALID = 'GCTA'
class Complement
  def self.of_dna(dna)
    dna.each_char do |char|
      unless VALID.include? char
        return ''
      end
    end

    dna.tr(VALID, 'CGAU')
end
end
