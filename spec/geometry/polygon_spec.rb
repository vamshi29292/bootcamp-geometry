describe Geometry::Polygon do
  describe '.new' do
    it 'should create a polygon with any given number of sides' do
      expect {
        Geometry::Polygon.new(2,3)
      }.to_not raise_exception
      expect {
        Geometry::Polygon.new(4,5,6,8)
      }.to_not raise_exception
    end
  end

  describe '#perimeter' do
    it 'should return perimter when given valid sides' do
      polygon1 = Geometry::Polygon.new(1,2,3,4)
      polygon2 = Geometry::Polygon.new(1,2,3,5,7)
      expect(polygon1.perimeter).to eq(10)
      expect(polygon2.perimeter).to eq(18)
    end
  end
end