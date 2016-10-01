describe Geometry::LineSegment do

  describe '#length' do
    it 'should return 4 when given 0,0,4,0' do
      point1 = Geometry::Point.new(0,0)
      point2 = Geometry::Point.new(4,0)
      segment = Geometry::LineSegment.new(point1, point2)
      expect(segment.length).to eq(4)
    end

    it 'should return 5 when given 0,0,3,4' do
      point1 = Geometry::Point.new(0,0)
      point2 = Geometry::Point.new(3,4)
      segment = Geometry::LineSegment.new(point1, point2)
      expect(segment.length).to eq(5)
    end

    it 'should return square root of 2 when given 1,1,2,2' do
      point1 = Geometry::Point.new(1,1)
      point2 = Geometry::Point.new(2,2)
      segment = Geometry::LineSegment.new(point1, point2)
      expect(segment.length).to eq(Math.sqrt(2))
    end

    it 'should return square root of 34 when given 4,3,7,8' do
      point1 = Geometry::Point.new(4,3)
      point2 = Geometry::Point.new(7,8)
      segment = Geometry::LineSegment.new(point1, point2)
      expect(segment.length).to eq(Math.sqrt(34))
    end
  end
end
