# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'surrogate/cache/version'

Gem::Specification.new do |spec|
  spec.name          = "surrogate-cache"
  spec.version       = Surrogate::Cache::VERSION
  spec.authors       = ["Dean Radcliffe"]
  spec.email         = ["dradcliffe@opinionlab.com"]
  spec.summary       = %q{Caching layer for Surrogate.}
  spec.description   = %q{Caching layer for Surrogate.}
  spec.homepage      = ""
  spec.license       = "Private"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "guard"
end
