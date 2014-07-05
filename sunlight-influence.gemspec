lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sunlight/influence/version'

Gem::Specification.new do |spec|
  spec.name          = "sunlight-influence"
  spec.version       = Sunlight::Influence::VERSION
  spec.authors       = ["Greg Cosgrove"]
  spec.email         = ["gregcosgrove@gmail.com"]
  spec.description   = %q{A wrapper for the Sunlight Foundation's Influence Explorer API.}
  spec.summary       = %q{Wraps the Sunlight-Foundation's Influence Explorer API so that it can be called using Ruby methods}
  spec.homepage      = "https://github.com/gbcosgrove/sunlight-influence"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  # spec.add_development_dependency "minitest"
  # spec.add_development_dependency "rake"
  # spec.add_development_dependency "webmock"
end
