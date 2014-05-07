
set :local_release_path, "release"

namespace :upload do
  desc "Upload the release"
  task :create_release do
    local_dir = fetch(:local_release_path).to_s
    on release_roles :all do
      upload! local_dir, release_path.to_s, recursive: true
    end
  end

  # required by capistrano
  task :check
  task :set_current_revision
end
