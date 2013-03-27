# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails/mark_requirements/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails-mark_requirements'
  spec.version       = Rails::MarkRequirements::VERSION
  spec.authors       = ['Paul Belt']
  spec.email         = %w(saprb@channing.harvard.edu)
  spec.description   = %q{expose presence-validation in a more controller-friendly manner}
  spec.summary       = %q{expose presence-validation in a more controller-friendly manner}
  spec.homepage      = 'https://github.com/belt/rails-mark_requirements'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.required_ruby_version = Gem::Requirement.new('>= 1.9.2')
  spec.required_rubygems_version = Gem::Requirement.new('>= 0') if spec.respond_to? :required_rubygems_version=

  if spec.respond_to? :specification_version
    spec.specification_version = 3
    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0')
      spec.add_runtime_dependency 'activemodel', '~> 3.2.13'
      spec.add_runtime_dependency 'rails', '~> 3.2'
      spec.add_development_dependency 'bundler', '~> 1.3'
      spec.add_development_dependency 'rake'
      spec.add_development_dependency 'rspec'
      spec.add_development_dependency 'sqlite3'
    else
      spec.add_dependency 'activemodel', '~> 3.2.13'
      spec.add_runtime_dependency 'rails', '~> 3.2'
      spec.add_dependency 'bundler', '~> 1.3'
      spec.add_dependency 'rake'
      spec.add_dependency 'rspec'
      spec.add_dependency 'sqlite3'
    end
  else
    spec.add_dependency 'activemodel', '~> 3.2.13'
    spec.add_runtime_dependency 'rails', '~> 3.2'
    spec.add_dependency 'bundler', '~> 1.3'
    spec.add_dependency 'rake'
    spec.add_dependency 'rspec'
    spec.add_dependency 'sqlite3'
  end
end
