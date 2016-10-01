class Geometry::Square
  attr_reader :side

  def initialize(side)
    @side = side
  end

  def perimeter
    4*side
  end
end