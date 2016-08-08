#psvita-proxy - v3.60
Proxy to enable access to PS Store without lastest firmware

To run container: docker run --tty=true --interactive=true --detach=true --publish=8080:8080 jonasbonno/psvita-proxy

On the Vita: Setup the WiFi to use Proxy. Use the docker host IP and the portnumber to selected for the container.

To access the console: 
- docker attach [name of container]

Run your commands
To exit again press CTRL+P and then CTRL+Q

Source: https://github.com/JonasBonno/dockerfiles
