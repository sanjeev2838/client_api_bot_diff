# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diffbot_ruby_api_client/version'

Gem::Specification.new do |spec|
  spec.name          = "diffbot_ruby_api_client"
  spec.version       = DiffbotRubyApiClient::VERSION
  spec.authors       = ["sanjeev kumar"]
  spec.email         = ["sanjeev2838@gmail.com"]
  spec.description   = %q{diffbot api client}
  spec.summary       = %q{api client to interact with diffbot api client}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday'
  spec.add_development_dependency "json"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
