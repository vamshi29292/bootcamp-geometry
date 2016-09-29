require "spec_helper"

describe Geometry::Point do
  describe "#point" do
    it "should create a point when x and y given co-ordinates" do
      point = Geometry::Point.new(4,5)
      expect(point.x).to eq(4)
      expect(point.y).to eq(5)
    end
  end
end
