module Matchi
  # **Untruth** matcher.
  class BeFalse
    # @example Is it false?
    #   be_false = Matchi::BeFalse.new
    #   be_false.matches? { false } # => true
    #
    # @yieldreturn [#object_id] the actual value to compare to the expected one.
    #
    # @return [Boolean] Comparison between actual and expected values.
    def matches?
      false === yield
    end
  end
end
