# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'everything/version'

Gem::Specification.new do |spec|
  spec.name          = "everything"
  spec.version       = Everything::VERSION
  spec.authors       = ["Irfan Shah"]
  spec.email         = ["mail.urfi@gmail.com"]
  spec.description   = %q{wrap multiple git projects into one project}
  spec.summary       = %q{wrap multiple git projects into one project}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'git'
  spec.add_runtime_dependency 'colorize'
  spec.add_runtime_dependency 'settingslogic'
end
