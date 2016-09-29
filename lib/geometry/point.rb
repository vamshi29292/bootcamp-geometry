class Geometry::Point
  attr_reader :abscissa, :ordinate

  def initialize(x,y)
    @abscissa = x
    @ordinate = y
  end
end