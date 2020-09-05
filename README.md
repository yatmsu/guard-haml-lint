[![Gem Version](https://badge.fury.io/rb/guard-haml_lint.svg)](https://badge.fury.io/rb/guard-haml_lint)
[![Build Status](https://travis-ci.org/yatmsu/guard-haml-lint.svg)](https://travis-ci.org/yatmsu/guard-haml-lint)
[![Code Climate](https://codeclimate.com/github/yatmsu/guard-haml-lint/badges/gpa.svg)](https://codeclimate.com/github/yatmsu/guard-haml-lint)

# Guard::HamlLint

A guard to lint your Haml.

## Requirements

* Ruby 2.4+
* Haml-Lint 0.35.0+

## Installation

Add this line to your application's Gemfile

```ruby
gem 'guard-haml_lint'
```

Add the default guard-haml_lint definition to your Guardfile

```bash
$ guard init haml_lint
```

Add options in Guardfile

```ruby
guard :haml_lint, cli: '--fail-fast' do
  watch(%r{.+\.html.*\.haml$})
  watch(%r{(?:.+/)?\.haml-lint\.yml$}) { |m| File.dirname(m[0]) }
end
```

## Guardfile

Please read the [Guardfile DSL documentation](https://github.com/guard/guard#readme) for additional information.

Available options:

```ruby
all_on_start: true        # Check all files at Guard startup. default: true
haml_dires: ['app/views'] # Check Directories. default: 'app/views' or '.'
cli: '--fail-fast --no-color' # Additional command line options to haml-lint. default: nil
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yatmsu/guard-haml_lint.

## License

guard-haml_lint is released under the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Guard::HamlLint project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/yatmsu/guard-haml-lint/blob/master/CODE_OF_CONDUCT.md).
