describe Geometry::LineSegment do

  describe '#length' do
    it 'should return 4 when given 0,0,4,0' do
      segment = Geometry::LineSegment.new(0,0,4,0)
      expect(segment.length).to eq(4)
    end

    it 'should return 5 when given 0,0,3,4' do
      segment = Geometry::LineSegment.new(0,0,3,4)
      expect(segment.length).to eq(5)
    end

    it 'should return square root of 2 when given 1,1,2,2' do
      segment = Geometry::LineSegment.new(1,1,2,2)
      expect(segment.length).to eq(Math.sqrt(2))
    end

    it 'should return square root of 34 when given 4,3,7,8' do
      segment = Geometry::LineSegment.new(4,3,7,8)
      expect(segment.length).to eq(Math.sqrt(34))
    end
  end
end
