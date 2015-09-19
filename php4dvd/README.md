# php4dvd
php4dvd - movie database
made by cyberolf at https://sourceforge.net/projects/php4dvd

Search IMDb.com for movie information and store this detailed information (like directors, actors, poster, language...)

More information per movie like personal notes, if you own or have seen the movie, loaned it out, etc...

    Add covers to your movies
    Powerful and quick search function
    User login
    Multiple languages
    Very configurable, easy to use
    Layout is based on a template which you can easily adjust

Including fix of broken IMDB lookup - PHP imdb Classes
Module made by izzy and sevec at https://sourceforge.net/projects/imdbphp

NOTE: PHP4DVD is only working on port 80, so it won't be possible to NAT, so use jwilder/nginx-proxy to get it working in a multiple port 80 web environment. nginx-proxy uses the VIRTUAL_HOST parameter.

Running nginx-proxy:
docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy

Running php4dvd:
docker run -d -p 80 -v [path to data location on host]:/var/www/html -e VIRTUAL_HOST=hostname.fdqn.tld -e APACHE_SERVERNAME=hostname -e APACHE_SERVERALIAS=hostname.home.lan jonasbonno/php4dvd
