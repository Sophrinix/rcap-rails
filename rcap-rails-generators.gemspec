# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rcap-rails-generators}
  s.version = "1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Farrel Lifson", "Pat George"]
  s.date = %q{2011-03-21}
  s.description = %q{A Ruby API providing parsing and generation of CAP (Common Alerting Protocol) messages for use with Rails.}
  s.email = %q{pat.george@gmail.com}
  s.extra_rdoc_files = [
    "CHANGELOG.rdoc",
    "README.rdoc"
  ]
  s.files = [
    "lib/generators/rcap/migrations/migrations_generator.rb",
    "lib/generators/rcap/migrations/templates/alerts_migration.rb",
    "lib/generators/rcap/migrations/templates/areas_migration.rb",
    "lib/generators/rcap/migrations/templates/infos_migration.rb",
    "lib/generators/rcap/migrations/templates/resources_migration.rb",
    "lib/generators/rcap/models/models_generator.rb",
    "lib/generators/rcap/models/templates/models/alert.rb",
    "lib/generators/rcap/models/templates/models/area.rb",
    "lib/generators/rcap/models/templates/models/circle.rb",
    "lib/generators/rcap/models/templates/models/event_code.rb",
    "lib/generators/rcap/models/templates/models/geocode.rb",
    "lib/generators/rcap/models/templates/models/info.rb",
    "lib/generators/rcap/models/templates/models/parameter.rb",
    "lib/generators/rcap/models/templates/models/point.rb",
    "lib/generators/rcap/models/templates/models/polygon.rb",
    "lib/generators/rcap/models/templates/models/resource.rb",
    "lib/generators/rcap/models/templates/modules/rcap.rb",
    "lib/generators/rcap/models/templates/modules/validations.rb"
  ]
  s.homepage = %q{https://github.com/pcg79/RCAP}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{CAP (Common Alerting Protocol) API for Ruby on Rails}
  s.test_files = [
    "spec/alert_spec.rb",
    "spec/area_spec.rb",
    "spec/circle_spec.rb",
    "spec/geocode_spec.rb",
    "spec/info_spec.rb",
    "spec/point_spec.rb",
    "spec/polygon_spec.rb",
    "spec/resource_spec.rb",
    "spec/spec_helper.rb",
    "spec/utilities_spec.rb",
    "spec/validations_spec.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_runtime_dependency(%q<assistance>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<uuidtools>, [">= 2.0.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<assistance>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<uuidtools>, [">= 2.0.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<assistance>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<uuidtools>, [">= 2.0.0"])
  end
end

