
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dry/system/dependency_graph/version"

Gem::Specification.new do |spec|
  spec.name          = "dry-system-dependency_graph"
  spec.version       = Dry::System::DependencyGraph::VERSION
  spec.authors       = ['Anton Davydov', 'Piotr Solnica']
  spec.email         = ['antondavydov.o@gmail.com', 'piotr.solnica@gmail.com']

  spec.summary       = %q{WIP}
  spec.description   = %q{WIP}
  spec.homepage      = "https://github.com/dry-rb/dry-system-dependency_graph"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra"
  spec.add_dependency "erubis"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
