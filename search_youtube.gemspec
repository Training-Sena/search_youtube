$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "search_youtube/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "search_youtube"
  s.version     = SearchYoutube::VERSION
  s.authors     = ["Training-Sena"]
  s.email       = ["felipe.llerena@koombea.com, kevin.diaz@koombea.com"]
  s.homepage    = "https://github.com/Training-Sena/search_youtube"
  s.summary     = "Plugin to find videos in Youtube from your proyect"
  s.description = "Find your videos from your project"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"

  s.add_dependency "jquery-rails", "~> 4.3", ">= 4.3.3"

  s.add_development_dependency "sqlite3"
end