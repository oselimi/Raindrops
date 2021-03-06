require_relative 'lib/raindrops/version'

Gem::Specification.new do |spec|
  spec.name          = "raindrops"
  spec.version       = Raindrops::VERSION
  spec.authors       = ["oselimi"]
  spec.email         = ["selimiosman94@gmail.com"]

  spec.summary       = %q{In this project we convert numbers }
  spec.description   = %q{goats is to after converting numbers execute someone text}
  spec.homepage      = "https://github.com/"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/"
  spec.metadata["changelog_uri"] = "https://github.com/"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
