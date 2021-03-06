
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pg_enum/version'

Gem::Specification.new do |spec|
  spec.name          = 'pg_enum'
  spec.version       = PgEnum::VERSION
  spec.authors       = ['inpego']
  spec.email         = ['vyacheslav.kalinkin@gmail.com']

  spec.summary       = %q{Gem that integrates PostgreSQL native enums with rails enums.}
  spec.homepage      = 'https://github.com/inpego/pg_enum'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://gems.inpego.sexy'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_runtime_dependency 'activerecord', '>= 4.1.8'
  spec.add_runtime_dependency 'activesupport', '>= 4.1.8'
  spec.add_runtime_dependency 'pg'
end
