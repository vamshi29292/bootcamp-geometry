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
    it 'should be unequal when  their attributes are unequal' do
      point1 = Geometry::Point.new(5,2)
      point2 = Geometry::Point.new(5,1)
      expect(point1 == point2).to be_falsey
    end

    it 'should be equal when  their attributes are equal' do
      point1 = Geometry::Point.new(5,2)
      expect(point1 == point1).to be_truthy
    end

    it 'should return true for two points when checked for Symmetric property of equality' do
      point1 = Geometry::Point.new(2,2)
      point2 = Geometry::Point.new(2,2)
      expect(point1 == point2 && point2 == point1).to be_truthy
    end

    it 'should return true for three points when checked for transitive property of equality' do
      point1 = Geometry::Point.new(2,2)
      point2 = Geometry::Point.new(2,2)
      point3 = Geometry::Point.new(2,2)
      expect((point1 == point2 && point2 == point3) && point1 == point3).to be_truthy
    end

    it 'should not be equal to any object of different type' do
      point1 = Geometry::Point.new(2,2)
      point2 = Object.new
      expect(point1 == point2).to be_falsey
    end

    it 'should not be equal to nil' do
      point1 = Geometry::Point.new(2,2)
      point2 = nil
      expect(point1 == point2).to be_falsey
    end
  end

  describe '#distance' do
    it 'should return square root of 2 when given (0,0) and (1,1)' do
      point1 = Geometry::Point.new(0,0)
      point2 = Geometry::Point.new(1,1)
      expect(point1.distance(point2)).to eq(Math.sqrt(2))
    end
  end
end