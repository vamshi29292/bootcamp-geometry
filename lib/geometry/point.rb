class Geometry::Point
  attr_reader :x_coord, :y_coord

  def initialize(x, y)
    @x_coord = x
    @y_coord = y
  end
end
