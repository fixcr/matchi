module Matchi
  # **Truth** matcher.
  class BeTrue
    # @example Is it true?
    #   be_true = Matchi::BeTrue.new
    #   be_true.matches? { true } # => true
    #
    # @yieldreturn [#object_id] the actual value to compare to the expected one.
    #
    # @return [Boolean] Comparison between actual and expected values.
    def matches?
      true === yield
    end
  end
end
