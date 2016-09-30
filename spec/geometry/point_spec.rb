describe Geometry::Point do
  describe '.initialize' do
    it 'should create a point when given co-ordinates' do
      expect{
        Geometry::Point.new(2,3)
      }.not_to raise_exception
    end

    it 'should be readable' do
      point = Geometry::Point.new(5,8)
      expect(point.abscissa).to eq(5)
      expect(point.ordinate).to eq(8)
    end

    it 'should not be writable' do
      point = Geometry::Point.new(0,0)
      expect{
        point.ordinate = 4
        point.abscissa = 5
      }.to raise_error(NoMethodError)
    end
  end

  describe '#equality (==)' do
    it 'should return true when given 2,2 for both first and second points' do
      point1 = Geometry::Point.new(2,2)
      point2 = Geometry::Point.new(2,2)
      expect(point1 == point2).to eq(true)
    end

    it 'should return false when given 5,2 for first point and 5,1 for second point ' do
      point1 = Geometry::Point.new(5,2)
      point2 = Geometry::Point.new(5,1)
      expect(point1 == point2).to eq(false)
    end

    it 'should return true for one point when checked for Reflexive property of equality' do
      point1 = Geometry::Point.new(5,2)
      expect(point1 == point1).to eq(true)
    end

    it 'should return true for two points when checked for Symmetric property of equality' do
      point1 = Geometry::Point.new(2,2)
      point2 = Geometry::Point.new(2,2)
      expect(point1 == point2).to eq(true)
      expect(point2 == point1).to eq(true)
    end

    it 'should return true for three points when checked for transitive property of equality' do
      point1 = Geometry::Point.new(2,2)
      point2 = Geometry::Point.new(2,2)
      point3 = Geometry::Point.new(2,2)
      expect(point1 == point2).to eq(true)
      expect(point2 == point3).to eq(true)
      expect(point1 == point3).to eq(true)
    end

    it 'should raise NoMethodError when one of the points is not of Point class' do
      point1 = Geometry::Point.new(2,2)
      point2 = Object.new()
      expect{point1 == point2}.to raise_error(NoMethodError)
    end

    it 'should raise NoMethodError when one of the points is nil' do
      point1 = Geometry::Point.new(2,2)
      point2 = nil
      expect{point1 == point2}.to raise_error(NoMethodError)
    end
  end
end