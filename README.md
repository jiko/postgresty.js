Postgresty
===

[Based on this blog post](http://rny.io/nginx/postgresql/2013/07/26/simple-api-with-nginx-and-postgresql.html). When I followed his steps and tried to get the API to accept POST XHRs, I ran into problems, hence this repo.

Install script assumes a Debian-based Linux distribution, /opt/openresty for the installation directory, and installs OpenResty 1.4.2.7.

Move files in the nginx folder to /opt/openresty/nginx/ after the installation script runs. Start up nginx and try out the demo on port 8080.

Make sure to change your Postgres login credentials in nginx.conf and run the create.sql script in Postgres. 

I would like to automate many of these steps in the future, and allow for further customization through passing arguments to the install script.
