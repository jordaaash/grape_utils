# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: grape_utils 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "grape_utils"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jordan Sexton"]
  s.date = "2016-08-08"
  s.description = "A toolkit of utility classes and Grape core extensions."
  s.email = "jordan@jordansexton.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "grape_utils.gemspec",
    "lib/grape_utils.rb",
    "lib/grape_utils/gem_version.rb",
    "lib/grape_utils/validators.rb",
    "lib/grape_utils/validators/alias_validator.rb",
    "lib/grape_utils/validators/assign_validator.rb",
    "lib/grape_utils/validators/clamp_validator.rb",
    "lib/grape_utils/validators/convert_validator.rb",
    "lib/grape_utils/validators/date_time_validator.rb",
    "lib/grape_utils/validators/date_validator.rb",
    "lib/grape_utils/validators/if_validator.rb",
    "lib/grape_utils/validators/set_validator.rb",
    "lib/grape_utils/validators/size_validator.rb",
    "lib/grape_utils/validators/split_validator.rb",
    "lib/grape_utils/validators/time_validator.rb",
    "lib/grape_utils/validators/unless_validator.rb",
    "lib/grape_utils/version.rb",
    "test/helper.rb",
    "test/test_grape_utils.rb"
  ]
  s.homepage = "http://github.com/jordansexton/grape_utils"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "A toolkit of utility classes and Grape core extensions."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<grape>, ["~> 0.8.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<grape>, ["~> 0.8.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<grape>, ["~> 0.8.0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end

