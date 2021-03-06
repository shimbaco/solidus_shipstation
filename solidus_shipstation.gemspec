# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_shipstation'
  s.version     = '2.0.1'
  s.summary     = 'Solidus/ShipStation Integration'
  s.description = 'Integrates ShipStation API with Solidus. Supports exporting shipments and importing tracking numbers'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Koji Shimba'
  s.email     = 'me@shimba.co'
  s.homepage  = 'http://www.shimba.co/'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'solidus_core', '~> 1.3.1'

  s.add_development_dependency 'capybara', '~> 1.1.2'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl', '~> 4.2.0'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'sqlite3'
end
