
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "events_drive/version"

Gem::Specification.new do |spec|
  spec.name          = "events_drive"
  spec.version       = EventsDrive::VERSION
  spec.authors       = ["Kirill Shevchenko"]
  spec.email         = ["hello@kirillshevch.com"]

  spec.summary       = "Pub/Sub framework for Ruby"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/kirillshevch/events_drive"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
