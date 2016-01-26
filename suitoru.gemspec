# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'suitoru/version'

Gem::Specification.new do |spec|
  spec.name          = "suitoru"
  spec.version       = Suitoru::VERSION
  spec.authors       = ["Masafumi Yokoyama"]
  spec.email         = ["yokoyama@clear-code.com"]

  spec.summary       = %q{A crawler for such as mailing lists.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/myokoym/suitoru"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency("bundler", "~> 1.11")
  spec.add_development_dependency("rake", "~> 10.0")
end
