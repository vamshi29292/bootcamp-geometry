require "spec_helper"

describe Geometry::Point do
  describe "#point_initialize" do
    it "should create a point when given x and y co-ordinates" do
      point = Geometry::Point.new(4,5)
      expect(point.x).to eq(4)
      expect(point.y).to eq(5)
    end

    it "a point should not be writable and raises NoMethodError" do
      point = Geometry::Point.new(3,2)
      expect{
        point.x = 4
      }.to raise_error(NoMethodError)
      expect{
        point.y = 4
      }.to raise_error(NoMethodError)
      expect(point.x).to eq(3)
      expect(point.y).to eq(2)
    end

    it "should throw ArgumentError when no co-ordinates passed" do
      expect{
        point = Geometry::Point.new()
      }.to raise_error(ArgumentError)
    end
  end

  describe Geometry::Segment do
    describe "#initialize" do
      it "should create a new segment with two ends when given 4 co-ordinates" do |variable|
        segment = Geometry::Segment.new(4,1,2,3)
        expect(segment.end1.x).to eq(4)
        expect(segment.end1.y).to eq(1)
        expect(segment.end2.x).to eq(2)
        expect(segment.end2.y).to eq(3)
      end
    end
  end
end
