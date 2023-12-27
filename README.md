# README


## on server
pre compile assets:
rake assets:precompile

run passenger:
passenger start --port 3000 --daemonize


## on localhost

ruby

sudo apt-get install ruby-full
sudo apt install libyaml-dev
sudo apt install -y nodejs
gem install rails
rails new hello_world
bin/rails server


maybe:
 sudo apt install -y git curl libssl-dev libreadline-dev zlib1g-dev
 
 
 reverse proxy:
 
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo systemctl restart apache2

for /etc/apache2/sites-enabled/...

    # ProxyPass configuration for Ruby on Rails
    ProxyPass /ruby http://localhost:3000
    ProxyPassReverse /ruby http://localhost:3000

    <Proxy *>
        Require all granted
    </Proxy>

sudo systemctl restart apache2
