describe Geometry::Rectangle do
  describe '.new' do
    it 'should create a rectangle when the length and width are given' do
      expect {
        Geometry::Rectangle.new(4,3)
      }.to_not raise_exception
    end
  end

  describe '#perimeter' do
    it 'should return 4 when given length=1 and width=2' do
      rectangle = Geometry::Rectangle.new(1,2)
      expect(rectangle.perimeter).to eq(6)
    end

    it 'should return infinity when either length or width is negative' do
      rectangle = Geometry::Rectangle.new(-1,5)
      expect(rectangle.perimeter).to eq(Float::INFINITY)
    end
  end

  describe '#area' do
    it 'should return 2 when given length=1 and width=2' do
      rectangle = Geometry::Rectangle.new(1,2)
      expect(rectangle.area).to eq(2)
    end

    it 'should return infinity when either length or width is negative' do
      rectangle = Geometry::Rectangle.new(-1,5)
      expect(rectangle.area).to eq(Float::INFINITY)
    end
  end
end