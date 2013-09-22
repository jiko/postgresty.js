Postgresty
===

[Based on this blog post](http://rny.io/nginx/postgresql/2013/07/26/simple-api-with-nginx-and-postgresql.html). When I followed his steps and tried to get the API to accept POST XHRs, I ran into problems.

Check out the [OpenResty Installation guide](http://openresty.org/#Installation). You may want to customize `install.sh` before you run it.

`install.sh` assumes a Debian-based Linux distribution and installs OpenResty 1.4.2.7. You can pass an installation directory as the first argument to the script, or stick with the default `/usr/local/openresty`.

Make sure to change your Postgres login credentials in `nginx/conf/nginx.conf` and run the `init.sql` script in Postgres. 

Copy the files in the `nginx` directory to their corresponding places in your OpenResty install.

You will see that I have included a basic demo that does an AJAX POST to your newly created API. Look at your JavaScript console for some basic debugging info from [Medium.js](http://jakiestfu.github.io/Medium.js/docs/) and Postgresty.
