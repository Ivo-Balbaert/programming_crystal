include Math

abstract class Shape
  abstract def area
  abstract def perim
end

class Square < Shape
  def initialize(@side : Int32)
  end

  def area
    @side * @side
  end

  def perim
    4 * @side
  end
end

class Circle < Shape
  def initialize(@radius : Float64)
  end

  def area
    4 * PI * @radius * @radius
  end

  def perim
    2 * PI * @radius
  end
end

p Square.new(3).area    # => 9
p Circle.new(5.0).area  # => 314.15926535897933
p Circle.new(5.0).perim # => 31.415926535897931
