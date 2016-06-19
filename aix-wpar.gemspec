$:.unshift(File.expand_path('../lib/', __FILE__))
require 'wpars/version'

deps = {
  'mixlib/shellout' => [ '~> 2' ]
}

Gem::Specification.new do |gem|
  gem.authors       = ["Alain Dejoux"]
  gem.email         = ["adejoux@djouxtech.net"]
  gem.description   = %q{A wrapper for the AIX WPAR administration.}
  gem.license       = "MIT"
  gem.summary       = %q{A ruby library wrapper for the AIX WPAR administration.}
  gem.homepage      = "https://github.com/adejoux/ruby-aix-wpar"
  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "aix-wpar"
  gem.require_paths = ["lib"]
  gem.version       = WPAR::VERSION

  deps.each do |dep, constraints|
    gem.add_runtime_dependency dep, *constraints
  end
end
