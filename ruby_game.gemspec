# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_game/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_game"
  spec.version       = RubyGame::VERSION
  spec.authors       = ["Diego D'OLIVEIRA GRANJA"]
  spec.email         = ["ddoliveiragranja@voyages-sncf.com"]

  spec.summary       = %q{Projet de formation Ruby Game}
  spec.description   = %q{Ceci est le dépôt pour les journées 2, 3 et 4 de la formation HC où l'on crée un jeu Ruby Game}
  spec.homepage      = "http://perdu.com"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "gosu", '~> 0.8', '>= 0.8.7.2'

end
