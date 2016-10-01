class Geometry::Polygon
  def initialize(*args)
    @sides = args
  end

  def perimeter
    return Float::INFINITY unless valid?
    @sides.reduce(0, :+)
  end

  def valid?
    @sides.each do |side|
      return false if side < 0
    end
    return true
  end
end