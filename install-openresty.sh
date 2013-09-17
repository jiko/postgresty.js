#!/bin/bash
# run as root

apt-get install libpcre3-dev build-essential libssl-dev sudo libreadline-dev postgresql libpq-dev libncurses5-dev libpcre3-dev libssl-dev perl make

wget http://openresty.org/download/ngx_openresty-1.4.2.7.tar.gz
tar xzvf ngx*.tar.gz
cd ngx_*
./configure --prefix=/opt/openresty --with-luajit --with-http_postgres_module -j2
make -j2
make install -j2

