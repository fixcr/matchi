require "./spec_helper"

describe Matchi do
  it "is expected to be true" do
    Matchi::RaiseException.new(DivisionByZero)
                          .matches? { 0 / 0 }
                          .should eq(true)
  end

  it "is expected to be false" do
    Matchi::RaiseException.new(DivisionByZero)
                          .matches? { "foo" }
                          .should eq(false)
  end

  it "is expected to raise" do
    h = { "foo" => "bar" }

    Matchi::RaiseException.new(DivisionByZero)
                          .matches? { h["baz"] }
                          .should eq(false)
  end
end
