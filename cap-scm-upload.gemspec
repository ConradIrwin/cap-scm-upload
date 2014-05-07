Gem::Specification.new do |gem|
  gem.name = 'cap-scm-upload'
  gem.version = '0.1.0'

  gem.summary = 'Capistrano upload support'
  gem.description = "Uploads the contents of the release directory on every deploy"

  gem.authors = ['Conrad Irwin']
  gem.email = %w(conrad@bugsnag.com)
  gem.homepage = 'http://github.com/ConradIrwin/cap-scm-upload'

  gem.license = 'MIT'

  gem.add_dependency 'capistrano', '>= 3.0'

  gem.files = `git ls-files`.split("\n")
end
