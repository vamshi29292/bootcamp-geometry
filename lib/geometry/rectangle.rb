class Geometry::Rectangle
  attr_reader :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end
end