class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a= a
    @b= b
    @c= c
  end


  def kind

    if @a < 0.1 || @b < 0.1 || @c < 0.1
      raise TriangleError
    elsif (@a + @b) <= @c || (@b + @c) <= @a || (@c + @a) <= @b
      raise TriangleError
    else

      if @a == @b && @b == @c
      :equilateral
      elsif (@a == @b && @a != @c) || (@a == @c && @a != @b) || (@b == @c && @b != @a)
      :isosceles
      elsif (@a != @b && @b != @c)
        :scalene
      end
    end
  end

  class TriangleError < StandardError
  end

end
