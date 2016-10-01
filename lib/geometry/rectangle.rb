class Geometry::Rectangle
  attr_reader :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end

  def perimeter
    return Float::INFINITY unless valid?
    2*(length + width)
  end

  def area
    return Float::INFINITY unless valid?
    length*width
  end

  def valid?
    length > 0 && width > 0
  end
end