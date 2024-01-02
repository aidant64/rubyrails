# README


## on server
pre compile assets:
rake assets:precompile

run passenger:
passenger start --port 3000 --daemonize -e production


## on localhost

ruby
```bash
sudo apt-get install ruby-full
sudo apt install libyaml-dev
sudo apt install -y nodejs
gem install rails
rails new hello_world
bin/bundle install
bin/rails server
```

maybe:
```
 sudo apt install -y git curl libssl-dev libreadline-dev zlib1g-dev
```
 
 
 reverse proxy:
```
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
```



ON SERVER
```bash
git clone https://github.com/aidant64/rubyrails.git
passenger stop
sudo rm config/credentials.yml.enc 
VISUAL="vi --wait" bin/rails credentials:edit
RAILS_ENV=production rails assets:precompile
export RAILS_ENV=production
rails server #TEST: should say starting in production on second line after Booting Puma (just a test)
passenger start --port 3000 --daemonize -e production
```
