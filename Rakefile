require 'rake'

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/*/*_spec.rb'
end

require 'puppet-lint/tasks/puppet-lint'

task :default => [:spec, :lint]
