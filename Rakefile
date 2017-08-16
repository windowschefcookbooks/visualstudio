

require 'rubocop/rake_task'
require 'foodcritic'
require 'rspec/core/rake_task'
require 'stove/rake_task'

task default: %i(rubocop foodcritic spec)

FoodCritic::Rake::LintTask.new do |t|
  t.options = {
    cookbook_paths: '.',
    search_gems: true
  }
end

RSpec::Core::RakeTask.new do |task|
  task.pattern = 'spec/**/*_spec.rb'
  task.rspec_opts = ['--color', '-f documentation', '-tunit']
end

RuboCop::RakeTask.new
Stove::RakeTask.new
