describe Geometry::Square do
  describe '.new' do
    it 'should create a square when given a side' do
      expect {
        Geometry::Square.new(4)
      }.to_not raise_exception
    end
  end

  describe '#perimeter' do
    it 'should return 8 when side is given as 2' do
      square = Geometry::Square.new(2)
      expect(square.perimeter).to eq(8)
    end

    it 'should return infinity when side is negative' do
      square = Geometry::Square.new(-1)
      expect(square.perimeter).to eq(Float::INFINITY)
    end
  end

  describe '#area' do
    it 'should return 4 if the side is 2' do
      square = Geometry::Square.new(2)
      expect(square.area).to eq(4)
    end
  end
end