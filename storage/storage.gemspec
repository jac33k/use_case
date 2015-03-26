# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'storage/version'

Gem::Specification.new do |spec|
  spec.name          = "storage"
  spec.version       = Storage::VERSION
  spec.authors       = ["Jacek Brozek"]
  spec.email         = ["jac33k@gmail.com"]


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-rescue'
  spec.add_development_dependency 'pry-stack_explorer'

  spec.add_runtime_dependency 'mongo_mapper'
  spec.add_runtime_dependency 'bson_ext'
  spec.add_runtime_dependency 'virtus'
  spec.add_runtime_dependency 'solid_use_case'
  spec.add_runtime_dependency 'reform'
end
