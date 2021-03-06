class Triangle
attr_accessor :equilateral, :isosceles, :scalene

def initialize(side1, side2, side3)
@side1 = side1
@side2 = side2
@side3 = side3
end

def kind
   if @side1 <= 0 || @side1 <= 0 || @side1 <= 0
     raise TriangleError
   elsif @side1 + @side1 <= @side1 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2 || @side1 == @side2 && @side2 < @side3
     raise TriangleError
   else
     if @side1 == @side2 && @side2 == @side3
       :equilateral
     elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
       :scalene
     elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
       :isosceles
     end
     end
   end
   class TriangleError < StandardError
   end
 end
