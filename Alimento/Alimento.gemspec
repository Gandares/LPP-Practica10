lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Alimento/version"

Gem::Specification.new do |spec|
  spec.name          = "Alimento"
  spec.version       = Alimento::VERSION
  spec.authors       = ["Óscar González García"]
  spec.email         = ["alu0100954609@ull.edu.es"]

  spec.summary       = %q{Practica 6}
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-1920/tdd-Gandares"

  spec.metadata["allowed_push_host"] = "https://github.com/ULL-ESIT-LPP-1920/tdd-Gandares"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ULL-ESIT-LPP-1920/tdd-Gandares"
  spec.metadata["changelog_uri"] = "https://github.com/ULL-ESIT-LPP-1920/tdd-Gandares"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
end
