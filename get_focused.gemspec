# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'get_focused/version'

Gem::Specification.new do |s|
  s.name          = "get_focused"
  s.version       = GetFocused::VERSION
  s.authors       = ["Fellipe Brito"]
  s.email         = ["fellipe@ladodireito.com"]
  s.summary          = %q{Block out distractions so you can focus}
  s.description      = %q{Who uses it? Site blocking is used by writers, software developers, and anyone else who benefits from long blocks of uninterrupted focus.}
  s.homepage      = ""
  s.license       = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
end
