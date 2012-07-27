# -*- encoding: utf-8 -*-
require File.expand_path('../lib/address_me/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Will Cosgrove"]
  gem.email         = ["will@willcosgrove.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "address_me"
  gem.require_paths = ["lib"]
  gem.version       = AddressMe::VERSION
end
