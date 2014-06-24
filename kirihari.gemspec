# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kirihari/version'

Gem::Specification.new do |spec|
  spec.name          = "kirihari"
  spec.version       = Kirihari::VERSION
  spec.authors       = ["Mitsutaka Mimura"]
  spec.email         = ["takkanm@gmail.com"]
  spec.summary       = %q{ato de kaku}
  spec.description   = %q{ato de kaku}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'erb_with_hash'


  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
