# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/fitcvut_oauth2/version'

Gem::Specification.new do |s|
  s.name     = 'omniauth-fitcvut-oauth2'
  s.version  = OmniAuth::FITCVUTOauth2::VERSION
  s.authors  = ['Dominik Jančík']
  s.email    = %w(jancidom@fit.cvut.cz magnet.cz@gmail.com)
  s.summary  = 'CTU FIT OAuth2 OmniAuth 1.0 strategy'
  s.homepage = 'https://github.com/MagNetCZ/omniauth-fitcvut-oauth2'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.3.0'

  s.add_development_dependency 'rspec', '~> 3.3.0'
  s.add_development_dependency 'rake'
end
