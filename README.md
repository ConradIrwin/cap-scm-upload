This gem provides upload support for capistrano. It lets you upload the
contents of the `release` directory for each release.

## Usage

1. Add `cap-scm-upload` to your Gemfile

```
# Gemfile
gem 'cap-scm-upload'
```

2. Use `upload` scm in Capistrano
```
# Capfile

require 'cap-scm-upload'
set :scm, :upoad
```

3. Fill the release directory before uploading

```
# config/deploy.rb

desc "Build the app"
task :build do
  sh "rm -rf release"
  sh "GOOS=linux go build -o release/app"
end

before :'upload:create_release', :build
```

## Config

You can use `set :local_release_path, "/path/to/your/release"`, the default is
the "release" directory in your current directory.

## Meta-fu

`cap-scm-upload` is released under the MIT license, see LICENSE.MIT for
details. Bug reports and feature requests are welcome.

This is similar to cap-scm-copy, but lets you choose a subdirectory instead of
uploading your working directory.
