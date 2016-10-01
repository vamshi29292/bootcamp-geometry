describe Geometry::Square do
  describe '.new' do
    it 'should create a square when given a side' do
      expect {
        Geometry::Square.new(4)
      }.to_not raise_exception
    end
  end
end