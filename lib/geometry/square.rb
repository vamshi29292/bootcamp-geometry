class Geometry::Square < Geometry::Rectangle
  def initialize(side)
    super(side, side)
  end
end