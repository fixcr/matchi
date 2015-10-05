require "./spec_helper"

describe Matchi do
  it "is expected to be true" do
    Matchi::Match.new(/^foo/)
                 .matches? { "foobar" }
                 .should eq(true)
  end

  it "is expected to be false" do
    Matchi::Match.new(/^foo/)
                 .matches? { "bar" }
                 .should eq(false)
  end
end
