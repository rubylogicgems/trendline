$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "trendline/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "trendline"
  s.version     = Trendline::VERSION
  s.authors     = ["Alek Niemczyk"]
  s.email       = ["alek@rubylogic.pl"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Trendline."
  s.description = "TODO: Description of Trendline."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "sqlite3"
end
