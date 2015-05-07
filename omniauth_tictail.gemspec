# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth_tictail/version'

Gem::Specification.new do |spec|
  spec.authors       = ['Andrew Chernysh']
  spec.email         = ['andriy@kitcrm.com']
  spec.description   = 'OmniAuth strategy for Tictail'
  spec.summary       = 'OmniAuth strategy for Tictail'
  spec.homepage      = 'http://github.com/andie-chernysh/omniauth-tictail'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.name          = 'omniauth_tictail'
  spec.require_paths = ['lib']
  spec.version       = Omniauth::Tictail::VERSION

  gem.add_dependency 'faraday',   ['>= 0.8', '< 0.10']
  gem.add_dependency 'multi_json', '~> 1.3'
  gem.add_dependency 'oauth2',     '~> 1.0'
  gem.add_dependency 'omniauth',   '~> 1.2'
end
