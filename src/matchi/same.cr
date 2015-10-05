module Matchi
  # **Equivalence** matcher.
  class Same
    # Initialize the matcher with a reference.
    #
    # @param expected [#same?] An expected object.
    def initialize(expected)
      @expected = expected
    end

    # @example Is it "foo" matcher
    #   same = Matchi::Same.new("foo")
    #   same.matches? { "foo" } # => true
    #
    # @yieldreturn [#object_id] the actual value to compare to the expected one.
    #
    # @return [Boolean] Comparison between actual and expected values.
    def matches?
      @expected.same?(yield)
    end
  end
end
