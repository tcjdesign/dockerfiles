FROM ubuntu:14.04


MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)


# Installing dependencies
RUN apt-get update && apt-get install -y \
	apache2 \
	php5 \
	php5-mysql \
        php5-gd \
	unzip \
	tar \
	wget && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*


# Add vhost file to sites-enabled
COPY 001-php4dvd.conf /etc/apache2/sites-available/
RUN ln -s /etc/apache2/sites-available/001-php4dvd.conf /etc/apache2/sites-enabled/


# Settings environment variables
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_SERVERADMIN admin@localhost
ENV APACHE_DOCUMENTROOT /var/www/html


# Expose port 80
EXPOSE 80


# Adding startscript and executes it
ADD start.sh /start.sh
RUN chmod 0755 /start.sh
CMD ["bash", "start.sh"]
