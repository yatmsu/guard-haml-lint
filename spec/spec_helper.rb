$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'guard/ui'
require 'guard/compat/test/helper'
require 'guard/haml_lint'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
