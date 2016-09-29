describe Geometry::Point do
  describe "#initialize" do
    it "should create a point when given co-ordinates" do
      expect{
        point = Geometry::Point.new(2,3)
      }.not_to raise_exception
    end
  end
end