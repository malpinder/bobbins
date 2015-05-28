# This file is the spec helper, it configures RSpec for the test run.
# Look in .rspec for additional configuration options.

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
end
