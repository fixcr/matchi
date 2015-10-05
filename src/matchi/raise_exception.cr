module Matchi
  # **Expecting errors** matcher.
  class RaiseException
    # Initialize the matcher with a descendant of class Exception.
    #
    # @param expected [Exception] The class of the expected exception.
    def initialize(expected)
      @expected = expected
    end

    # @example Divided by 0 matcher
    #   raise_exception = Matchi::RaiseException.new(DivisionByZero)
    #   raise_exception.matches? { 0 / 0 } # => true
    #
    # @yieldreturn [#object_id] the actual value to compare to the expected one.
    #
    # @return [Boolean] Comparison between actual and expected values.
    def matches?
      yield
    rescue ex
      @expected === ex.class
    else
      false
    end
  end
end
