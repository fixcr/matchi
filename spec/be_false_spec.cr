require "./spec_helper"

describe Matchi do
  it "is expected to be true" do
    Matchi::BeFalse.new
                   .matches? { true }
                   .should eq(false)
  end

  it "is expected to be false" do
    Matchi::BeFalse.new
                   .matches? { false }
                   .should eq(true)
  end
end
