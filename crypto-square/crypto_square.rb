class Crypto
  def initialize(word)
    @word = word
  end

  def normalize_plaintext
    @word.downcase.gsub(/[\W]/, '')
  end

  def size
    Math.sqrt(normalize_plaintext.length).ceil
  end

  def plaintext_segments
    find_segments(normalize_plaintext, size)
  end

  def find_segments(text, length)
    text.scan(/.{1,#{length}}/).to_a
  end

  def ciphertext
    test.join('')
  end

  def test
    plaintext_chars = plaintext_segments.map(&:chars)
    cipher_text = Array.new(plaintext_chars.max_by(&:size).size) { plaintext_chars.map { |e| e.shift || ' ' }.join.rstrip }
    cipher_text
  end

  def normalize_ciphertext
    test.join(' ')
  end
end
