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
  end
end