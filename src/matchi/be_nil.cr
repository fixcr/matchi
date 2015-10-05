module Matchi
  # **Nil** matcher.
  class BeNil
    # @example Is it nil?
    #   be_nil = Matchi::BeNil.new
    #   be_nil.matches? { nil } # => true
    #
    # @yieldreturn [#object_id] the actual value to compare to the expected one.
    #
    # @return [Boolean] Comparison between actual and expected values.
    def matches?
      nil === yield
    end
  end
end
