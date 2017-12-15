#install gem full option

sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion git

# download and install rvm

curl -L https://get.rvm.io | bash -s stable --ruby

source ~/.rvm/scripts/rvm

# install capatrino
sudo gem install capistrano capistrano-ext railsless-deploy

# install framework

https://github.com/capistrano/capistrano
