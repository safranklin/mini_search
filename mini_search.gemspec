
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mini_search/version"

Gem::Specification.new do |spec|
  spec.name          = "mini_search"
  spec.version       = MiniSearch::VERSION
  spec.authors       = ["Andrew S Aguiar"]
  spec.email         = ["andrewaguiar6@gmail.com"]

  spec.summary       = %q{In-memory naive search engine.}
  spec.description   = %q{In-memory naive search engine.}
  spec.homepage      = "https://www.github.com/andrewaguiar/mini_search"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
  #   `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # end
  spec.files = Dir['lib/**/*.rb'] + Dir['bin/*']
  spec.files += Dir['[A-Z]*']
  spec.files.reject! { |fn| fn.include? "*/spec/*" }

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.4.10"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "ruby_ngrams", "~> 0.0.6"
end
