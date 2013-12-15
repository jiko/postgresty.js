#!/bin/bash

BASEPATH=${1:-"/usr/local/openresty"}

sudo apt-get install libpcre3-dev build-essential libssl-dev sudo libreadline-dev postgresql libpq-dev libncurses5-dev libpcre3-dev libssl-dev perl make

wget http://openresty.org/download/ngx_openresty-1.4.3.7.tar.gz
tar xzvf ngx*.tar.gz
cd ngx_*
./configure --prefix=$BASEPATH --with-luajit --with-http_postgres_module
make
sudo make install

echo
echo Customize nginx/conf/nginx.conf
echo
echo Customize init.sql and run 'su - postgres psql -f init.sql'
echo
echo Copy the files in the nginx directory to the corresponding places in your new OpenResty install
echo
echo Start the server with the command .$BASEPATH/nginx/bin/nginx
