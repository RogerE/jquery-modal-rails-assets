# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery-modal-rails-assets/version'

Gem::Specification.new do |spec|
  spec.name          = "jquery-modal-rails-assets"
  spec.version       = JqueryModalRailsAssets::VERSION
  spec.authors       = ["RogerE"]
  spec.email         = ["roger@webfokus.no"]

  spec.summary       = "Use jQuery Modal with Rails Asset Pipeline"
  spec.description   = "Provides the jQuery Modal assets for your Rails application."
  spec.homepage      = "https://github.com/RogerE/jquery-modal-rails-assets"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.2.10"
  spec.add_development_dependency "rake", ">= 12.3.3"
end
