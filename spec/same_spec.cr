require "./spec_helper"

describe Matchi do
  it "is expected to be true" do
    Matchi::Same.new("foo")
                .matches? { "foo" }
                .should eq(true)
  end

  it "is expected to be false" do
    Matchi::Same.new("foo")
                .matches? { "bar" }
                .should eq(false)
  end
end
