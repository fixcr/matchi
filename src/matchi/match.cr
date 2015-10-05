module Matchi
  # **Regular expressions** matcher.
  class Match
    # Initialize the matcher with an instance of Regex.
    #
    # @param expected [#match] A regular expression.
    def initialize(expected)
      @expected = expected
    end

    # @example Is it a username?
    #   match = Matchi::Match.new(/^[a-z0-9_-]{3,16}$/)
    #   match.matches? { "bob" } # => true
    #
    # @yieldreturn [#object_id] the actual value to compare to the expected one.
    #
    # @return [Boolean] Comparison between actual and expected values.
    def matches?
      !@expected.match(yield).nil?
    end
  end
end
