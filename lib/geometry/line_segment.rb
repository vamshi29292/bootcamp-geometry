class Geometry::LineSegment
  attr_reader :_start, :_end

  def initialize(_start, _end)
    @_start = _start
    @_end = _end
  end

  def length
    _start.distance(_end)
  end
end
