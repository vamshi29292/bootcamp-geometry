class Geometry::LineSegment
  attr_reader :x1, :x2, :y1, :y2

  def initialize(x1,y1,x2,y2)
    @x1 = x1
    @x2 = x2
    @y1 = y1
    @y2 = y2
  end

  def length
    # http://bfy.tw/7wX1
    square_of_length = (x1 - x2)**2 + (y1 - y2)**2
    Math.sqrt(square_of_length)
  end
end
