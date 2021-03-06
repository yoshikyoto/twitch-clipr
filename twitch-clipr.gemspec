
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "twitch/clipr/version"

Gem::Specification.new do |spec|
  spec.name          = "twitch-clipr"
  spec.version       = Twitch::Clipr::VERSION
  spec.authors       = ["yoshikyoto"]
  spec.email         = ["stb_yoshiyuki-s@hotmail.co.jp"]

  spec.summary       = "Twitch Clipr API Client"
  spec.description   = "Twitch Clipr API Client"
  spec.homepage      = "http://www.utakata.work/"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.12"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
