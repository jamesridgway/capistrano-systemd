# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "capistrano-systemd-jr"
  spec.version       = "1.0.1"
  spec.authors       = ["James Ridgway"]
  spec.email         = ["james@jamesridgway.co.uk"]

  spec.summary       = %q{Systemd operations for capistrano based on the original capistrano-systemd gem by CrBoy}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/jamesridgway/capistrano-systemd"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", "~> 3.5"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
