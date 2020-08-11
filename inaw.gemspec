require_relative 'lib/inaw/version'

Gem::Specification.new do |spec|
  spec.name          = "inaw"
  spec.version       = INAW::VERSION
  spec.authors       = ["realYuushi"]
  spec.email         = ["real.yuushi@gmail.com"]

  spec.summary       = 'Chooses a random word.'
  spec.description   = 'Chooses a random word in different languages.'
  spec.homepage      = 'https://github.com/realYuushi/i-need-a-word'
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/realYuushi/i-need-a-word"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
