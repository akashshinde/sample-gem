# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require './lib/version.rb'

Gem::Specification.new do |spec|
  spec.name          = "sample-gem"
  spec.version       = SampleGem::Core::VERSION
  spec.authors       = ["Steve Midgley"]
  spec.email         = ["info@learningtapestry.com"]
  spec.summary       = %q{Sample gem summary}
  spec.description   = %q{Sample gem descr}
  spec.homepage      = "http://www.learningtapestry.com"
  spec.license       = "(c) 2015 Learning Tapestry, all rights reservered."
  # include all files required to run
  spec.files         = ['lib/sample-gem.rb', 'lib/version.rb']
  # put any files in ./bin if you want them auto-installed to path when gem is installed
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  # use add_runtime_dependency where this gem needs a gem in order to function
  # spec.add_runtime_dependency "gem dependency"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
