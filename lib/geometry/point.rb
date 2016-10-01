class Geometry::Point
  attr_reader :abscissa, :ordinate

  def initialize(abscissa, ordinate)
    @abscissa = abscissa.to_i
    @ordinate = ordinate.to_i
  end

  def ==(other)
    if !other.instance_of?(self.class)
      return false
    end
    self.abscissa == other.abscissa && self.ordinate == other.ordinate
  end

  def distance(other)
    line_segment = Geometry::LineSegment.new(self.abscissa, self.ordinate, other.abscissa, other.ordinate)
    line_segment.length
  end
end
