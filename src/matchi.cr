# Namespace for the Matchi library.
#
# @api public
#
# @example Let's see if "Hello, Crystal world!" is matching /^Hello/... It will!
#   matcher = Matchi::Match.new(/^Hello/)
#   matcher.matches? { "Hello, Crystal world!" } # => true
module Matchi
end

require "./matchi/*"
