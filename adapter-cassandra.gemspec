# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "adapter/cassandra/version"

Gem::Specification.new do |s|
  s.name        = "adapter-cassandra"
  s.version     = Adapter::Cassandra::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Adam Keys"]
  s.email       = ["adam@therealadam.com"]
  s.homepage    = ""
  s.summary     = %q{Adapter for cassandra}
  s.description = %q{Adapter for cassandra}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # s.add_dependency 'adapter', '~> 0.5.1'
  # s.add_dependency 'cassandra', '~> 0.9.0'
end
