# Trendline

A trendline calculator.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'trendline'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install trendline

## Usage

```ruby
# Initialize with an array of points
points = [
  { x: 1, y: 3 },
  { x: 2, y: 1 },
  { x: 3, y: 2 },
  { x: 4, y: 5 },
  { x: 5, y: 5 },
  { x: 6, y: 4 }
]

trendline = Trendline.new(points)

# and now you have an access to the following methods:

# to get an array of values run
trendline.values
# => [1.9047619047619047, 2.4761904761904763, 3.0476190476190474, 3.6190476190476186, 4.19047619047619, 4.761904761904762]

# to get a value for x = 1 run
trendline.value_for 1
# => 1.9047619047619047

# to get a pretty trendline equation run
trendline.equation
# => "y = 0.571 * x + 1.333"
trendline.equation 6
#=> "y = 0.571429 * x + 1.333333"

# to get an alpha value run
trendline.alpha
# => 0.5714285714285714

# to get a beta value run
trendline.beta
# => 1.3333333333333333
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/rubylogicgems/trendline/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
