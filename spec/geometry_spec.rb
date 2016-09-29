require "spec_helper"

describe "#failing_test" do
  it "should fail" do
    expect(1).to eq(0)
  end
end
