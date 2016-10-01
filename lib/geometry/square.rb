class Geometry::Square
  attr_reader :side

  def initialize(side)
    @side = side
  end

  def perimeter
    return Float::INFINITY unless valid?
    4*side
  end

  def area
    return Float::INFINITY unless valid?
    side**2
  end

  def valid?
    side >= 0
  end
end