class Geometry::Point
  attr_reader :abscissa, :ordinate

  def initialize(abscissa, ordinate)
    @abscissa = abscissa.to_i
    @ordinate = ordinate.to_i
  end

  def ==(other)
    if self.class != other.class
      return false
    end
    self.abscissa == other.abscissa && self.ordinate == other.ordinate
  end
end
