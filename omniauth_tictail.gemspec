# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth_tictail/version'

Gem::Specification.new do |spec|
  spec.authors       = ['Andrew Chernysh']
  spec.email         = ['andie.chernysh@gmail.com']
  spec.description   = 'OmniAuth strategy for Tictail'
  spec.summary       = 'OmniAuth strategy for Tictail'
  spec.homepage      = 'http://github.com/andie-chernysh/omniauth-tictail'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.name          = 'omniauth-tictail'
  spec.require_paths = ['lib']
  spec.version       = Omniauth::Tictail::VERSION

  spec.add_dependency 'omniauth', '~> 1'
  spec.add_dependency 'omniauth-oauth2', '~> 1'
end
