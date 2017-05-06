# -*- encoding: utf-8 -*-

require_relative 'lib/arrayie'

Gem::Specification.new do |gem|
  gem.name          = 'arrayie'
  gem.version       = Arrayie::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ['Hamed Ramezanian Nik']
  gem.email         = ['hamed.r.nik@gmail.com']
  gem.summary       = 'Arrayie is a library which contains tools for working '\
    'with Array in Ruby.'
  gem.description   = 'Arrayie is a library which contains tools for working '\
    'with Array in Ruby.'
  gem.homepage      = 'https://github.com/iCEAGE/arrayie'
  gem.license       = 'LGPL-3.0'

  gem.files         = `git ls-files | grep -Ev '^(myapp|examples)'`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map do |f|
    File.basename(f)
  end
  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 2.4'

  gem.add_development_dependency 'rake', '~> 12.0'
  gem.add_development_dependency 'minitest', '~> 5.10', '>= 5.10.1'
end
