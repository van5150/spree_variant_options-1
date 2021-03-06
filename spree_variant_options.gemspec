# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "spree_variant_options/version"

Gem::Specification.new do |s|
  s.name        = "spree_variant_options"
  s.version     = SpreeVariantOptions::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Spencer Steffen", "Stephane Bounmy"]
  s.email       = ["spencer@citrusme.com", 'stephanebounmy@gmail.com']
  s.homepage    = "https://github.com/citrus/spree_variant_options"
  s.summary     = %q{Spree Variant Options is a very simple spree extension that replaces the radio-button variant selection with groups of option types and values. In this verson it has modified to dropdowns. So instead of the buttons it'll generate a separate dropdown which contains values for each option type.}
  s.description = %q{Spree Variant Options is a very simple spree extension that replaces the radio-button variant selection with groups of option types and values. In this verson it has modified to dropdowns. So instead of the buttons it'll generate a separate dropdown which contains values for each option type.}

  s.rubyforge_project = "spree_variant_options"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Runtime
  spree_version = '~> 3.0.0'
  s.add_dependency 'spree_api', spree_version
  s.add_dependency 'spree_core', spree_version
  s.add_dependency 'spree_frontend', spree_version
  s.add_dependency 'spree_backend', spree_version

  # Development
  s.add_development_dependency('spree_sample',     spree_version)
  s.add_development_dependency('dummier')
  s.add_development_dependency('shoulda')
  s.add_development_dependency('shoulda-context')
  s.add_development_dependency('shoulda-matchers')
  s.add_development_dependency('pry', '~> 0.10.0')
  s.add_development_dependency('m')
  s.add_development_dependency('ffaker')
  s.add_development_dependency('factory_girl_rails')
  s.add_development_dependency('cucumber-rails')
  s.add_development_dependency('database_cleaner')
  s.add_development_dependency('sqlite3')
  s.add_development_dependency('coffee-rails')
  s.add_development_dependency('capybara')
  s.add_development_dependency('poltergeist')
  s.add_development_dependency('launchy')
  s.add_development_dependency("sprockets")
end
