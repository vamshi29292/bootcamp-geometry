class Geometry::Point
  attr_reader :abscissa, :ordinate

  def initialize(abscissa, ordinate)
    @abscissa = abscissa
    @ordinate = ordinate
  end

  def ==(point2)
    self.abscissa == point2.abscissa && self.ordinate == point2.ordinate
  end
end
