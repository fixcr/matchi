# Matchi

[![Build Status](https://travis-ci.org/fixcr/matchi.svg?branch=master)][travis]

> Collection of expectation matchers for [Crystal](http://crystal-lang.org/).

## Contact

* Home page: https://github.com/fixcr/matchi
* Bugs/issues: https://github.com/fixcr/matchi/issues

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  matchi:
    github: fixcr/matchi
```


## Usage

```crystal
require "matchi"
```

### Built-in matchers

**Untruth** matcher:

```crystal
be_false = Matchi::BeFalse.new
be_false.matches? { false } # => true
```

**Nil** matcher:

```crystal
be_nil = Matchi::BeNil.new
be_nil.matches? { nil } # => true
```

**Truth** matcher:

```crystal
be_true = Matchi::BeTrue.new
be_true.matches? { true } # => true
```

**Regular expressions** matcher:

```crystal
match = Matchi::Match.new(/^[a-z0-9_-]{3,16}$/)
match.matches? { "bob" } # => true
```

**Expecting errors** matcher:

```crystal
raise_exception = Matchi::RaiseException.new(DivisionByZero)
raise_exception.matches? { 0 / 0 } # => true
```

**Equivalence** matcher:

```crystal
same = Matchi::Same.new("foo")
same.matches? { "foo" } # => true
```

### Custom matchers

Custom matchers can easily be defined for expressing expectations.

**Be the answer** matcher:

```crystal
module Matchi
  class BeTheAnswer
    def matches?
      42 === yield
    end
  end
end

be_the_answer = Matchi::BeTheAnswer.new
be_the_answer.matches? { 42 } # => true
```

**Start with** matcher:

```crystal
module Matchi
  class StartWith
    def initialize(expected)
      @expected = expected
    end

    def matches?
      !Regex.new("^#{@expected}").match(yield).nil?
    end
  end
end

start_with = Matchi::StartWith.new("foo")
start_with.matches? { "foobar" } # => true
```

## Versioning

__Matchi__ follows [Semantic Versioning 2.0](http://semver.org/).

## Contributing

1. [Fork it](https://github.com/fixcr/matchi/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

See `LICENSE.md` file.

[travis]: https://travis-ci.org/fixcr/matchi
