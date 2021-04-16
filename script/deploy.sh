#!/bin/sh
ssh -p 50739 jenkins@prod-server.innovationvillage.co.ug <<EOF
 cd /var/www/wsr
 git checkout master
 git pull
 source /usr/local/rvm/scripts/rvm
 rvm use 2.6.3
 bundle install
 bundle exec rake db:migrate
 bundle exec rake assets:precompile
 sudo /etc/init.d/nginx reload
 exit 
EOF
