require "./spec_helper"

describe Matchi do
  it "is expected to be true" do
    Matchi::BeNil.new
                 .matches? { nil }
                 .should eq(true)
  end

  it "is expected to be false" do
    Matchi::BeNil.new
                 .matches? { 4 }
                 .should eq(false)
  end
end
