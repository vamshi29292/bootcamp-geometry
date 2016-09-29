require "spec_helper"

describe Geometry::Point do
  describe "#point" do
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
end
