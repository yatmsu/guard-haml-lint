[![Gem Version](https://badge.fury.io/rb/guard-haml_lint.svg)](https://badge.fury.io/rb/guard-haml_lint)
[![Dependency Status](https://www.versioneye.com/ruby/guard-haml_lint/0.2.0/badge?style=flat)](https://www.versioneye.com/ruby/guard-haml_lint/0.2.0)
[![Build Status](https://travis-ci.org/yatmsu/guard-haml-lint.svg)](https://travis-ci.org/yatmsu/guard-haml-lint)
[![Code Climate](https://codeclimate.com/github/yatmsu/guard-haml-lint/badges/gpa.svg)](https://codeclimate.com/github/yatmsu/guard-haml-lint)

# Guard::HamlLint

A guard to lint your Haml.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'guard-haml_lint'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install guard-haml_lint

Add the default guard-haml_lint definition to your Guardfile:

    $ guard init haml_lint

## Guardfile

Please read the [Guardfile DSL documentation](https://github.com/guard/guard#readme) for additional information.

Available options:

    all_on_start: true        # Check all files at Guard startup. default: true
    haml_dires: ['app/views'] # Check Directories. default: 'app/views' or '.'

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yatmsu/guard-haml_lint.

## License

Ruby on Rails is released under the [MIT License](https://opensource.org/licenses/MIT).
