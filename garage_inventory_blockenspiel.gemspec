# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'garage_inventory_blockenspiel/version'

Gem::Specification.new do |spec|
  spec.name          = "garage_inventory_blockenspiel"
  spec.version       = GarageInventoryBlockenspiel::VERSION
  spec.authors       = ["Sebastian Oelke"]
  spec.email         = ["dev@soelke.de"]
  spec.summary       = %q{A small internal Ruby DSL for garage inventory written using Blockenspiel.}
  spec.description   = %q{This gem provides an internal Ruby DSL for garages. It supports adding garages.
                          Each garage can have multiple rooms. Finally, a room consists of multiple tools.}
  spec.homepage      = "https://github.com/baschtl/garage_inventory_blockenspiel"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "blockenspiel"

  spec.add_development_dependency "bundler",      "~> 1.6"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake",         "~> 10.0"
  spec.add_development_dependency "rspec",        "~> 3"
  spec.add_development_dependency "rspec-its",    "~> 1.2"
end
