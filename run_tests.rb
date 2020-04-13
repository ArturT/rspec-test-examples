puts 'Run tests'

require 'rspec/core'

def start_runner(cli_args)
  puts '-'*50
  args = ['--format', 'documentation'] + cli_args
  options = RSpec::Core::ConfigurationOptions.new(args)
  RSpec::Core::Runner.new(options).run($stderr, $stdout)
end


cli_args = ['spec/example_spec.rb[1:1]']
start_runner(cli_args)

RSpec.clear_examples

cli_args = ['spec/example_spec.rb[1:2]']
start_runner(cli_args)
