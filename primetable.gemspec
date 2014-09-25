# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'bundler/version'

Gem::Specification.new do |s|
  s.name        = "primtetable"
  s.version     = "1.0.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Bill DePhillips"]
  s.email       = ["bill.dephillips@gmail.com"]
  s.licenses    = ['Apache']
  s.homepage    = "https://github.com/rearadmiral/primetable"
  s.summary     = "prints multiplication tables of first N prime numbers"
  s.description = "command line tool that prints a table of the first N prime numbers, (e.g. 2,3,5 x 2,3,5)"

  s.files        = Dir.glob("{lib}/**/*") + %w(LICENSE README.md)
  s.require_path = 'lib'
  s.executables << 'primetable'
end
