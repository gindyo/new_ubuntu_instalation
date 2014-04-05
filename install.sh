#!/bin/bash
echo 'What version of ruby would you like (example: 2.0.0)?:'
read ruby
echo 'What version of nodejs would you like (example: 0.10.2)?:'
read node
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo add-apt-repository ppa:gnome3-team/gnome3
sudo apt-get install gnome-shell git kdiff3 sublime-text-installer curl libyaml-dev mysql-server libmysql-cil-dev chromium-browser ubuntu-restricted-extras build-essential sqlite3 libsqlite3-dev openssl libssl-dev mysql-server libmysqlclient-dev libmysql-ruby libmysqld-dev mysql-workbench postgresql libpq-dev bison autoconf xchat vim git git-core git-gui gitk curl libreadline-gplv2-dev libxml2-dev libxslt1-dev ant libqt4-dev gtk2-engines-pixbuf xvfb libqtwebkit-dev libyaml-dev libtool vim-nox vim-rails python-paramiko python-pysqlite2 mongodb phantomjs pithos
bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)   
rvm install $ruby  
rvm use $ruby --default   
gem update --system   
gem install bundler  

wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh   
wget http://nodejs.org/dist/v$node/node-v$node.tar.gz  
tar -xvf node-v$node.tar.gz   
cd node-v$node/   
./configure   
make   
sudo make install  
bash
