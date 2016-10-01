class Geometry::Point
  attr_reader :abscissa, :ordinate

  def initialize(abscissa, ordinate)
    @abscissa = abscissa
    @ordinate = ordinate
  end

  def ==(other)
    if !other.instance_of?(self.class)
      return false
    end
    self.abscissa == other.abscissa && self.ordinate == other.ordinate
  end

  def distance(other)
    # http://bfy.tw/7wX1
    square_of_distance = (self.abscissa - other.abscissa)**2 + (self.ordinate - other.ordinate)**2
    Math.sqrt(square_of_distance)
  end
end
