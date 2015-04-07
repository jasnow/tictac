# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tictac/version'

Gem::Specification.new do |spec|
  spec.name          = "tictac"
  spec.version       = Tictac::VERSION
  spec.authors       = ["Mark Phelps"]
  spec.email         = ["mark.aaron.phelps@gmail.com"]
  spec.summary       = %q{A game of Tic Tac Toe.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "colorize"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
