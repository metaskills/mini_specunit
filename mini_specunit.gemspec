# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mini_specunit/version"

Gem::Specification.new do |s|
  s.name        = 'mini_specunit'
  s.version     = MiniSpecUnit::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Ken Collins']
  s.email       = ['ken@metaskills.net']
  s.homepage    = 'http://github.com/metaskills/mini_specunit'
  s.summary     = 'Make Test::Unit::TestCase a subclass of of MiniTest::Spec.'
  s.description = 'MiniSpecUnit is a simple shim for libs that require Test::Unit::TestCase to get an object that subclasses MiniTest::Spec.'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  s.add_dependency('minitest')
end

