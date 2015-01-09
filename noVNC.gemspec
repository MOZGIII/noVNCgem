# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "noVNC/version"

Gem::Specification.new do |s|
  s.name        = "noVNC"
  s.version     = NoVnc::VERSION
  s.authors     = ["DedaSys LLC", "MOZGIII"]
  s.email       = ["davidw@dedasys.com", "mike-n@narod.ru"]
  s.homepage    = "https://github.com/davidw/noVNCgem"
  s.summary     = %q{noVNC for your Rails application}
  s.description = %q{VNC client using HTML5 (WebSockets, Canvas) with encryption (wss://) support.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "rails", ">= 3.0"

  s.add_development_dependency "bundler", ">= 1.7"
  s.add_development_dependency "rake", ">= 10.0"
end
