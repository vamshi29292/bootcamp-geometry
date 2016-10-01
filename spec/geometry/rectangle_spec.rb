describe Geometry::Rectangle do
  describe '.new' do
    it 'should create a rectangle when the length and width are given' do
      expect {
        Geometry::Rectangle.new(4,3)
      }.to_not raise_exception
    end
  end
end