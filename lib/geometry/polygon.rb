class Geometry::Polygon
  def initialize(*args)
    @sides = args
  end

  def perimeter
    @sides.reduce(0, :+)
  end
end