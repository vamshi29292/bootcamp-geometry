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
end