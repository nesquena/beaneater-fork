# frozen_string_literal: true
# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'beaneater/version'

Gem::Specification.new do |gem|
  gem.name          = "beaneater"
  gem.version       = Beaneater::VERSION
  gem.authors       = ["Nico Taing"]
  gem.email         = ["nico.taing@gmail.com"]
  gem.description   = %q{Simple beanstalkd client for ruby}
  gem.summary       = %q{Simple beanstalkd client for ruby.}
  gem.homepage      = "https://github.com/beanstalkd/beaneater"
  gem.license       = 'MIT'
  gem.metadata      = {
    "changelog_uri"         => "https://github.com/beanstalkd/beaneater/blob/master/CHANGELOG.md",
    "source_code_uri"       => "https://github.com/beanstalkd/beaneater",
    "bug_tracker_uri"       => "https://github.com/beanstalkd/beaneater/issues",
    "rubygems_mfa_required" => "true"
  }

  gem.files         = %w[
    CHANGELOG.md
    LICENSE.txt
    README.md
    lib/beaneater.rb
    lib/beaneater/arguments.rb
    lib/beaneater/configuration.rb
    lib/beaneater/connection.rb
    lib/beaneater/errors.rb
    lib/beaneater/job.rb
    lib/beaneater/job/collection.rb
    lib/beaneater/job/record.rb
    lib/beaneater/stats.rb
    lib/beaneater/stats/fast_struct.rb
    lib/beaneater/stats/stat_struct.rb
    lib/beaneater/tube.rb
    lib/beaneater/tube/collection.rb
    lib/beaneater/tube/record.rb
    lib/beaneater/version.rb
  ]
  gem.executables   = []
  gem.require_paths = ["lib"]
  gem.required_ruby_version = '>= 2.7'
  gem.add_development_dependency 'minitest', "~> 4.1.0"
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'mocha'
  gem.add_development_dependency 'term-ansicolor'
  gem.add_development_dependency 'json'
end
