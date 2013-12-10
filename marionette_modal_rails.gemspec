$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "marionette_modal_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "marionette-modal-rails"
  s.authors     = ["Jared Smith"]
  s.email       = ["jcsmith1859"]
  s.summary     = "An asset gemification of Marionette.Modal backbone.js plugin."
  s.description = "A rails asset gem that adds Marionette.Modal to the asset pipeline"
  s.homepage    = "https://github.com/Outcome-Engenuity/marionette-modal-rails"
  s.licenses    = ["MIT"]

  s.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.version     = MarionetteModalRails::Rails::VERSION
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.1"
  s.add_dependency "marionette.modal", "~>1.0.0.7"
end
