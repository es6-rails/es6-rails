Gem::Specification.new do |s|
  s.name        = 'es6-rails'
  s.version     = '0.0.0'
  s.date        = '2015-10-19'
  s.summary     = "ES6 adapter for Rails"
  s.description = "Enables use of ES6 in assets, views or inline."
  s.authors     = ["Cristian Dugacicu"]
  s.email       = 'razorcd@yahoo.com'
  s.files       = ["lib/es6-rails.rb"]
  s.homepage    =
    'http://rubygems.org'
  s.license       = 'MIT'

  required_ruby_version = '>= 2.0.0'

  s.add_dependency  'rails',               '>= 4.0', '< 5.0'
  s.add_dependency  'babel-transpiler',    '>= 0.7.0'
end
