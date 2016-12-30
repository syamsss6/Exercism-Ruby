module BookKeeping
  VERSION = 1
end
class Array
  def accumulate
    op = []
    each do |e|
      op << yield(e)
    end
    op
  end
end

