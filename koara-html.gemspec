# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = 'koara-html'
  s.version       = '0.9.0'
  s.authors       = ['Andy Van Den Heuvel']
  s.email         = ['andy.vandenheuvel@gmail.com']
  s.summary       = 'Koara to HTML parser written in Ruby'
  s.description = s.summary
  s.homepage      = 'https://github.com/koara/koara-rb-html'
  s.license       = 'Apache-2.0'

  s.files         = `git ls-files`.split($/)
  s.test_files    = s.files.grep(%r{^(test|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency 'rake', '~> 10.4', '>= 10.4.2'
end
