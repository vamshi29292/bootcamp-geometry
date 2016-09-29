class Geometry::Segment
  attr_reader :end1, :end2

  def initialize(x1,y1,x2,y2)
    @end1 = Geometry::Point.new(x1,y1)
    @end2 = Geometry::Point.new(x2,y2)
  end

  def length
    square_of_length = (end1.x_coord - end2.x_coord)**2 + (end1.y_coord - end2.y_coord)**2
    Math.sqrt(square_of_length)
  end
end
