class Geometry::Point
  attr_reader :abscissa, :ordinate

  def initialize(abscissa, ordinate)
    @abscissa = abscissa
    @ordinate = ordinate
  end

  def ==(point2)
    if point2 == nil || point2.class != Geometry::Point
      return false
    end
    self.abscissa == point2.abscissa && self.ordinate == point2.ordinate
  end
end
