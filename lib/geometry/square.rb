class Geometry::Square
  attr_reader :side

  def initialize(side)
    @side = side
  end

  def perimeter
    return Float::INFINITY if side < 0
    4*side
  end

  def area
    return Float::INFINITY if side < 0
    side**2
  end
end