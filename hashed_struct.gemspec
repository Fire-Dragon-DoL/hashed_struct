# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hashed_struct'

Gem::Specification.new do |spec|
  spec.name          = "hashed_struct"
  spec.version       = HashedStruct::VERSION
  spec.authors       = ["Fire-Dragon-DoL"]
  spec.email         = ["francesco.belladonna@gmail.com"]
  spec.summary       = %q{Struct with hash as initialization argument}
  spec.description   = %q{Struct with hash as initialization argument, to avoid dependency on positional arguments}
  spec.homepage      = "https://github.com/Fire-Dragon-DoL/hashed_struct"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "faker"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rspec", "~> 3.1.0"
end
