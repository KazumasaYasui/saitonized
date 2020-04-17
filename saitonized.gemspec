require_relative 'lib/saitonized/version'

Gem::Specification.new do |spec|
  spec.name          = "saitonized"
  spec.version       = Saitonized::VERSION
  spec.authors       = ["KazumasaYasui"]
  spec.email         = ["silver.soul39@gmail.com"]

  spec.summary       = %q{Saitonized messes up Japanese.}
  spec.description   = %q{Please use for learning Japanese.}
  spec.homepage      = "https://github.com/KazumasaYasui/saitonized"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://example.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/KazumasaYasui/saitonized"
  spec.metadata["changelog_uri"] = "https://github.com/KazumasaYasui/saitonized/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  # Add gems
  spec.add_runtime_dependency "natto"
  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
