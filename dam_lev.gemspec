# -*- encoding: utf-8 -*-
require File.expand_path("../lib/dam_lev/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "dam_lev"
  s.version     = DamLev::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Allen Madsen"]
  s.email       = ["blatyo@gmail.com"]
  s.homepage    = "http://github.com/blatyo/DamLev"
  s.summary = %q{Measure the distance between two strings.}
  s.description = %q{Measures the distance between two strings using the Damerau–Levenshtein distance algorithm. For more, see http://en.wikipedia.org/wiki/Damerau%E2%80%93Levenshtein_distance }

  s.required_rubygems_version = ">= 1.3.6"
  s.add_development_dependency "rspec",   "~> 2.1.0"
  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files`.split("\n").map{|f| f =~ /^spec\/(.*)/ ? $1 : nil}.compact
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end