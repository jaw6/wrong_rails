$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wrong_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wrong_rails"
  s.version     = WrongRails::VERSION
  s.authors     = ["Joshua Wehner"]
  s.email       = ["me@joshuawehner.com"]
  s.homepage    = "http://joshuawehner.com"
  s.summary     = "Adds support for Wrong in Rails > 4"
  s.description = "I like Wrong. I like Minitest. I'd like them to use them together with less pain in Rails 4 apps."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "wrong", "~> 0.7.1"

  s.add_development_dependency "sqlite3"
end
