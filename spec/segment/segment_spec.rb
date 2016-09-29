describe Geometry::Segment do
  describe "#initialize" do
    it "should create a new segment with two ends when given 4 co-ordinates" do |variable|
      segment = Geometry::Segment.new(4,1,2,3)
      expect(segment.end1.x_coord).to eq(4)
      expect(segment.end1.y_coord).to eq(1)
      expect(segment.end2.x_coord).to eq(2)
      expect(segment.end2.y_coord).to eq(3)
    end
  end
end
