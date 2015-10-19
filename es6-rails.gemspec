# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'es6-rails'
  s.version     = '0.0.1'
  s.date        = '2015-10-19'
  s.summary     = "ES6 adapter for Rails"
  s.description = "Enables use of ES6 in assets, views or inline."
  s.authors     = ["Cristian Dugacicu"]
  s.email       = 'razorcd@yahoo.com'
  s.files       = ["lib/es6-rails.rb", "lib/es6/rails/template_handler.rb"]
  s.homepage    =
    'http://rubygems.org'
  s.license       = 'MIT'

  s.require_paths = ["lib"]
  s.required_ruby_version = '>= 2.0.0'

  s.add_dependency  'rails',               '>= 4.0', '< 5.0'
  s.add_dependency  'babel-transpiler',    '>= 0.7.0'
end
