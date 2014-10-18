# HashedStruct

Struct with hash as initialization argument, to avoid dependency on positional arguments

## Installation

Add this line to your application's Gemfile:

    gem 'hashed_struct', '~> 0.0.2'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hashed_struct

## Usage

Use it like `Struct`, but when initializing the generated class, use a hash of
arguments instead of positional arguments.

```ruby
Person = HashedStruct.new(:name, :age, :gender)
Person.new(name: 'Joe', age: 30, gender: 'Male')
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/hashed_struct/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Special thanks
- Hanmac (#ruby on freenode)
- apeiros (#ruby on freenode)
