# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'host_sammury_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "host_sammury_parser"
  spec.version       = HostSammuryParser::VERSION
  spec.authors       = ["yoshitsugu"]
  spec.email         = ["zeroinon1206bass@gmail.com"]
  spec.description   = "get Hash object from command `vim-cmd hostsvc/hostsummary` "
  spec.summary       = "ESXi hostsummary parser"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
