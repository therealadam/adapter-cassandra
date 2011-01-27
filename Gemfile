source "http://rubygems.org"

# Specify your gem's dependencies in adapter-cassandra.gemspec
gemspec

group(:development) do
  gem 'rspec',          '~> 2.3'
  gem 'log_buddy',      '~> 0.5.0'
  gem 'timecop',        '~> 0.3.5'
  gem 'SystemTimer',    '~> 1.2.1'
  gem 'i18n',           '0.5.0'
  gem 'activesupport',  '~> 3', :require => 'active_support'

  # Requiring like this is totally ghetto
  gem 'adapter', :path => '~/Desktop/Do/adapter'
  gem 'cassandra', '~> 0.9.0', :require => 'cassandra/0.7'
end
