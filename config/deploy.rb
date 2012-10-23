# capistranoの出力がカラーになる
require "capistrano_colors"
#
# cap deploy時に自動で bundle install が実行される
require "bundler/capistrano"


set :application, "mercury"
set :repository,  "git@github.com:panair/mercury-pnr.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "panair.jp"                          # Your HTTP server, Apache/etc
role :app, "panair.jp"                          # This may be the same as your `Web` server
role :db,  "panair.jp", :primary => true # This is where Rails migrations will run
role :db,  "panair.jp"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
