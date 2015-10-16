$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "trendline/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "trendline"
  s.version     = Trendline::VERSION
  s.authors     = ["Alek Niemczyk"]
  s.email       = ["info@rubylogic.pl"]

  s.summary       = 'Trendline calculator'
  s.description   = 'Trendline calculator'
  s.homepage      = 'https://github.com/rubylogicgems/trendline'
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = "exe"
  s.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.8"
  s.add_development_dependency "rake", "~> 10.0"
end
