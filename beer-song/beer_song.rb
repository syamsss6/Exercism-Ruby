module BookKeeping
  VERSION = 2
end

class BeerSong
  def verse(number)
    case number
      when 0
        "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
      when 1
        "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
      when 2
        "%s bottles of beer on the wall, %s bottles of beer.\nTake one down and pass it around, %s bottle of beer on the wall.\n" % [number, number, number - 1]
      else
        "%s bottles of beer on the wall, %s bottles of beer.\nTake one down and pass it around, %s bottles of beer on the wall.\n" % [number, number, number-1] 
    end
  end
  def verses(num2, num1)
    num2.downto(num1).map { |i| verse(i)}.join("\n")
  end
  def lyrics
    verses(99, 0)
  end
end


