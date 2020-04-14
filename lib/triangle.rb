class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    side1,side2,side3 = [side1,side2,side3].sort
    raise TriangleError if side1<=0 || side1 + side2 <= side3
    return :equilateral if side1 == side3 
    return :isosceles if side1 == side2 || side2 == side3
    return scalene
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
