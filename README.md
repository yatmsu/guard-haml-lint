[![Gem Version](https://badge.fury.io/rb/guard-haml_lint.svg)](https://badge.fury.io/rb/guard-haml_lint)
[![Dependency Status](https://www.versioneye.com/ruby/guard-haml_lint/0.3.0/badge?style=flat)](https://www.versioneye.com/ruby/guard-haml_lint/0.3.0)
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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yatmsu/guard-haml_lint.

## License

guard-haml_lint is released under the [MIT License](https://opensource.org/licenses/MIT).
