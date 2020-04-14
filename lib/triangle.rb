class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c 
  end

  def kind
  a, b, c = [@a, @b, @c].sort
  raise TriangleError if a <= 0 or a + b <= c
  return :equilateral if a == c
  return :isosceles if a == b or b == c
  return :scalene
    # if ((side1 == side2) && (side2 == side3) && (side == side1))
    #   return :equilateral
    # elsif ((side1 == side2) || (side2 == side2) || (b == c))
    #   return :isosceles
    # else
    #   return :scalene
    # end
  end

  


  class TriangleError < StandardError

  end
end
