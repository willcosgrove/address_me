# -*- encoding: utf-8 -*-
require File.expand_path('../lib/address_me/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Will Cosgrove"]
  gem.email         = ["will@willcosgrove.com"]
  gem.description   = %q{A super simple way to turn an address string into a hash of useful information!}
  gem.summary       = %q{Parse strings into addresses.  It's the Chronic of the address world.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "address_me"
  gem.require_paths = ["lib"]
  gem.version       = AddressMe::VERSION

  gem.add_dependency("geocoder")
  gem.add_development_dependency("rspec")
  gem.add_development_dependency("rake")
  gem.add_development_dependency("guard-rspec")
end
