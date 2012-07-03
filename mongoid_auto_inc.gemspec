# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongoid_auto_inc/version"

Gem::Specification.new do |s|
  s.name        = "mongoid_auto_inc"
  s.version     = MongoidAutoInc::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jeff Smith"]
  s.email       = ["jffreyjs@gmail.com"]
  s.homepage    = "https://github.com/jffjs/mongoid_auto_inc"
  s.summary     = %q{Adds auto increment capabilities to Mongoid::Document}
  s.description = %q{Adds auto increment capabilities to Mongoid::Document}

  s.rubyforge_project = "mongoid_auto_inc"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = '>= 1.8.6'
  s.required_rubygems_version = '>= 1.3.5'

  s.add_runtime_dependency('activesupport', '>= 3.0.0')

  s.add_development_dependency('rspec',  '>= 2.0.0.beta.22')
  # moving mongoid to be a development dependency
  # having it as a gem dependency may cause issues, change the version here to test
  s.add_development_dependency('mongoid', '>= 2.4.10')
  # to test Mongoid 3
  # gem 'mongoid', git: 'git://github.com/mongoid/mongoid.git'
end
