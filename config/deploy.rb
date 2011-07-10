set :application, "bab"
set :scm, :git
set :repository, "git@github.com:spanner/tagged_blog.git"
set :git_enable_submodules, 1
set :ssh_options, { :forward_agent => true }

set :user, 'spanner'
set :group, 'spanner'
set :branch, 'master'

role :web, "seagoon.spanner.org"
role :app, "seagoon.spanner.org"

set :deploy_to, "/var/www/#{application}"
set :deploy_via, :remote_cache
default_run_options[:pty] = true

after "deploy:setup" do
  sudo "chown -R #{user}:#{group} /var/www/#{application}"
  run "mkdir -p #{deploy_to}/logs"
  run "mkdir -p #{shared_path}/assets/post_attachments" 
  run "mkdir -p #{shared_path}/assets/assets" 
  run "mkdir -p #{shared_path}/public" 
  run "mkdir -p #{shared_path}/public/fonts" 
  run "mkdir -p #{shared_path}/config" 
  run "touch #{shared_path}/config/nginx.conf"
  sudo "ln -s #{shared_path}/config/nginx.conf /etc/nginx/sites-available/#{application}"
end

after "deploy:update" do
  run "ln -s #{shared_path}/config/database.yml #{current_release}/config/database.yml" 
  run "ln -s #{shared_path}/assets/post_attachments #{current_release}/post_attachments" 
  run "ln -s #{shared_path}/assets/assets #{current_release}/public/assets" 
  run "ln -s #{shared_path}/public/favicon.ico #{current_release}/public/favicon.ico"
  run "ln -s #{shared_path}/public/robots.txt #{current_release}/public/robots.txt"
  run "ln -s #{shared_path}/public/images/local #{current_release}/public/images/local"
  # run "ln -s #{shared_path}/public/fonts #{current_release}/public/fonts"
  run "mkdir -p #{current_release}/vendor"
  run "ln -s /var/www/radiant1 #{current_release}/vendor/radiant"
end

namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
  task :stop, :roles => :app do
    # There is no stop.
  end
  task :restart, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
  task :clear_cached_copy do
    run "rm -rf #{shared_path}/cached-copy"
  end
end
