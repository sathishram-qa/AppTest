# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sikuli/version"

Gem::Specification.new do |s|
  s.add_development_dependency "rspec"
  s.name        = "sikuli"
  s.version     = Sikuli::VERSION
  s.authors     = ["sathishram-qa"]
  s.email       = ["sathishram.qa@gmail.com"]
  s.homepage    = "https://github.com/sathishram-qa/AppTest"
  s.summary     = %q{Ruby wrapper for Sikuli GUI automation library}
  s.description = %q{Sikuli allows you to interact with your application's user interface using image based search to automate user actions.}

  s.rubyforge_project = "sikuli"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end