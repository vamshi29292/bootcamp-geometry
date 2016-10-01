class Geometry::Rectangle
  attr_reader :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end

  def perimeter
    return Float::INFINITY if length < 0 || width < 0
    2*(length + width)
  end

  def area
    return Float::INFINITY if length < 0 || width < 0
    length*width
  end
end