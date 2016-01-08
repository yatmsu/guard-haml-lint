lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/haml_lint/version'

Gem::Specification.new do |spec|
  spec.name          = 'guard-haml_lint'
  spec.version       = Guard::HamlLintVersion::VERSION
  spec.authors       = ['y@su']
  spec.email         = ['toyasyu@gmail.com']

  spec.summary       = 'Guard plugin for HAML-Lint'
  spec.description   = 'Guard::HamlLint automatically runs Haml Lint tools.'
  spec.homepage      = 'https://github.com/yatmsu/guard-haml-lint'

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- exe/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_dependency 'guard', '~> 2.2'
  spec.add_dependency 'guard-compat', '~> 1.1'
  spec.add_runtime_dependency 'haml_lint',   '~> 0.15.2'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end