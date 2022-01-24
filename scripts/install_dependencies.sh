#!/bin/bash
set -ve
cd /home/todolist/

source ~/.rvm/scripts/rvm
RAILS_ENV=production bundle install
RAILS_ENV=production bundle update
RAILS_ENV=production rake db:migrate
RAILS_ENV=production bundle exec rake assets:precompile
