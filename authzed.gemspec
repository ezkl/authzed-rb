$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require "authzed/version"

Gem::Specification.new do |s|
  s.name        = 'authzed'
  s.version     = Authzed::VERSION
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['Apache-2.0']
  s.summary     = "Ruby bindings for Authzed API"
  s.description = "Authzed is the best way to build robust and scalable permissions systems. See https://authzed.com for more details."
  s.authors     = ["Authzed"]
  s.email       = 'support@authzed.com'
  s.files       = Dir.glob(%w[LICENSE README.md {lib}/**/*.rb])
  s.homepage    = 'https://authzed.com'
  s.metadata    = { 
    "bug_tracker_uri" => "https://github.com/authzed/authzed-rb/issues",
    "github_repo"     => "ssh://github.com/authzed/authzed-rb",
    "homepage_uri"    => "https://authzed.com",
    "source_code_uri" => "https://github.com/authzed/authzed-rb",
  }

  s.require_paths = ["lib"]
  s.required_ruby_version = ["~> 2.7.6", "~> 3.1.2", "< 3.2"]

  s.add_runtime_dependency "grpc", "~> 1.46"
  s.add_development_dependency "rspec", "~> 3.0"
end
