require_relative 'lib/key_mirror/version'

Gem::Specification.new do |spec|
  spec.name          = "key_mirror-ruby"
  spec.version       = KeyMirror::VERSION
  spec.authors       = ["Akshay Birajdar"]
  spec.email         = ["mailakshayb1@gmail.com"]

  spec.summary       = %q{Ruby implementation for JS keyMirror library}
  spec.description   = %q{Ruby implementation for JS keyMirror library}
  spec.homepage      = "https://github.com/the-spectator/keymirror-ruby"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/the-spectator/keymirror-ruby"

  spec.files         = Dir["CHANGELOG.md", "LICENSE.txt", "README.md", "lib/**/*"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
