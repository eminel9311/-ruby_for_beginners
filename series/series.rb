
class Series
  def initialize(str)
    @input = str  
  end

  def slices(num)
    raise ArgumentError, "error" if num > @input.length
    @input.chars.each_cons(num).map(&:join)
  end
end