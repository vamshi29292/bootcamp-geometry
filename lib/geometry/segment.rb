class Geometry::Segment
  attr_reader :end1, :end2

  def initialize(x1,y1,x2,y2)
    @end1 = Geometry::Point.new(x1,y1)
    @end2 = Geometry::Point.new(x2,y2)
  end
end
