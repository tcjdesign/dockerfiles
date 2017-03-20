# THIS DOCKERFILE IS NOT COMPLETE !!!

FROM ubuntu:16.04

MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)

# export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Updating container
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \ 
        software-properties-common

# Add repository that contains the landscape server
RUN add-apt-repository ppa:landscape/16.06

# Installing landscape server components
RUN apt-get update && \
    apt-get install -y \
        supervisor \ 
        landscape-server \ 
        apache2 && \
	    apt-get clean && \ 
	    rm -rf /var/lib/apt/lists/*

# Enable mpm_worker in Apache2
RUN a2dismod mpm_event && \
    a2enmod mpm_worker
    

# Generate self-signed CA certificate 
RUN openssl genrsa \
    -out /etc/ssl/private/landscape_server_ca.key \
    -passout pass:landscape 2048
RUN openssl req -new -x509 -sha256 -days 3650 -nodes \
    -key /etc/ssl/private/landscape_server_ca.key \
    -passin pass:landscape \
    -out /etc/ssl/certs/landscape_server_ca.crt
    -subj "/C=US/ST=Ohio/L=Columbus/O=Org/OU=IT/CN=landscape-ca"

# generate self-signed landscape certificate
RUN openssl req -newkey rsa:2048 -sha256 -days 3650 \
    -keyout /etc/ssl/private/landscape_server.key \
    -passout pass:landscape \
    -out /etc/ssl/certs/landscape_server.req \
    -subj "/C=US/ST=Ohio/L=Columbus/O=Org/OU=IT/CN=landscape"
RUN openssl rsa \
    -in /etc/ssl/private/landscape_server.key \
    -passin pass:landscape \
    -out /etc/ssl/private/landscape_server.key
RUN mkdir ./demoCA/ && \
    mkdir ./demoCA/newcerts && \
    touch ./demoCA/index.txt && \
    openssl x509 -in /etc/ssl/certs/landscape_server_ca.crt -serial -noout | cut -c8- > ./demoCA/serial 
RUN openssl ca -batch \
    -in /etc/ssl/certs/landscape_server.req \
    -cert /etc/ssl/certs/landscape_server_ca.crt \
    -keyfile /etc/ssl/private/landscape_server_ca.key \
    -passin pass:landscape \
    -out /etc/ssl/certs/landscape_server.pem
RUN rm -Rf ./demoCA && rm /etc/ssl/certs/landscape_server.req


RUN for module in rewrite proxy_http ssl headers expires; do sudo a2enmod $module; done
RUN a2dissite 000-default



COPY assets/landscape-service.conf /etc/landscape/service.conf
COPY assets/apache-landscape.conf /etc/apache2/sites-available/landscape.conf

RUN a2ensite landscape.conf

COPY assets/entrypoint.sh /sbin/entrypoint.sh

RUN chmod 755 /sbin/entrypoint.sh

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/sbin/entrypoint.sh"]

CMD ["app:start"]
