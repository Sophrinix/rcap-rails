require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "rcap-rails-generators"
  gem.version = "1.3"
  gem.authors = [ "Farrel Lifson", "Pat George" ]
  gem.email = "pat.george@gmail.com"
  gem.homepage = "https://github.com/pcg79/RCAP"
  gem.platform = Gem::Platform::RUBY
  gem.summary = "CAP (Common Alerting Protocol) API for Ruby on Rails"
  gem.files = Dir.glob("lib/**/*")
  gem.require_path = "lib"
  gem.has_rdoc = true
  gem.extra_rdoc_files = [ "README.rdoc","CHANGELOG.rdoc" ]
  gem.add_dependency( 'assistance' )
  gem.add_dependency( 'json' )
  gem.add_dependency( 'uuidtools', '>= 2.0.0' )
  # gem.add_dependency 'activerecord', '>=3.0'
  gem.description = "A Ruby API providing parsing and generation of CAP (Common Alerting Protocol) messages for use with Rails."
  gem.test_files = Dir.glob("spec/*.rb")

  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  #  gem.add_runtime_dependency 'jabber4r', '> 0.1'
  #  gem.add_development_dependency 'rspec', '> 1.2.3'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "test_jeweler #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
