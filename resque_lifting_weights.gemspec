# -*- encoding: utf-8 -*-
require File.expand_path('../lib/resque_lifting_weights/version', __FILE__)

Gem::Specification.new do |s|
  s.add_development_dependency('rspec', '~> 2.4')
  s.add_development_dependency('yard') 
  s.add_development_dependency('resque_unit')
  
  s.add_runtime_dependency('resque')
  s.add_runtime_dependency('resque_mailer')
  s.add_runtime_dependency('resque-scheduler')
  s.add_runtime_dependency('resque-retry')
  s.add_runtime_dependency('resque-cleaner')        
  # s.add_runtime_dependency('resque-delay-with-mongoid')
  s.add_runtime_dependency('airbrake')  

  s.authors = ["K$"]
  s.description = %q{A gem that combines all the goodness resque has to offer.}
  s.email = ['kdmny30@gmail.com']
  s.files = `git ls-files`.split("\n")
  s.homepage = 'https://github.com/kdmny/resque_lifting_weights'
  s.name = 'resque_lifting_weights'
  s.platform = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if s.respond_to? :required_rubygems_version=
  s.rubyforge_project = s.name
  s.summary = %q{A gem that combines all the goodness resque has to offer.}
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = ResqueLiftingWeights::VERSION
end
