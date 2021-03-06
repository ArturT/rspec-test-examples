puts 'Run tests'

require 'rspec/core'

def start_runner(cli_args)
  puts '-'*50
  args = ['--format', 'documentation'] + cli_args
  options = RSpec::Core::ConfigurationOptions.new(args)
  RSpec::Core::Runner.new(options).run($stderr, $stdout)

  RSpec.clear_examples

  # this reset all and makes B1 run
  #RSpec.reset
end


cli_args = ['spec/example_spec.rb[1:1]', 'spec/example2_spec.rb']
start_runner(cli_args)

cli_args = ['spec/example_spec.rb[1:2]', 'spec/example3_spec.rb']
start_runner(cli_args)

