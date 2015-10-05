require "./spec_helper"

describe Matchi do
  it "is expected to be true" do
    Matchi::BeTrue.new
                  .matches? { true }
                  .should eq(true)
  end

  it "is expected to be false" do
    Matchi::BeTrue.new
                  .matches? { false }
                  .should eq(false)
  end
end
