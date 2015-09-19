#!/bin/bash


APACHE_DOCUMENTROOT="/var/www/html"
PHP4DVD_VERSION="2.0"
IMDBPHP_VERSION="2.2.1"


if [[ ! -d $APACHE_DOCUMENTROOT/movies/covers ]]; then
    echo "=> No website found"
    echo "=> Downloading php4dvd from sourceforge.net ..."
    cd /tmp && wget http://downloads.sourceforge.net/project/php4dvd/php4dvd-$PHP4DVD_VERSION.zip -O php4dvd-$PHP4DVD_VERSION.zip
    rm -Rf $APACHE_DOCUMENTROOT/* && unzip -uo /tmp/php4dvd-$PHP4DVD_VERSION.zip -d /tmp && cp -R /tmp/php4dvd/* $APACHE_DOCUMENTROOT && rm /tmp/php4dvd-$PHP4DVD_VERSION.zip && rm -Rf /tmp/php4dvd/
    echo "=> Done downloading php4dvd from sourceforge.net"
    echo "=> Now fixing broken IMDBPHP"
    echo "=> Downloading IMDBPHP from sourceforge.net ..."
    wget http://downloads.sourceforge.net/project/imdbphp/imdbphp2-$IMDBPHP_VERSION.tar.gz -O imdbphp2-$IMDBPHP_VERSION.tar.gz
    rm -Rf $APACHE_DOCUMENTROOT/lib/imdbphp && tar -zxf /tmp/imdbphp2-$IMDBPHP_VERSION.tar.gz && mv /tmp/imdbphp2-$IMDBPHP_VERSION $APACHE_DOCUMENTROOT/lib/imdbphp && rm /tmp/imdbphp2-$IMDBPHP_VERSION.tar.gz
    echo "=> Done downloading IMDBPHP from sourceforge.net"
    echo "=> Now settings owner and permissions ..."
    chown -R www-data:www-data $APACHE_DOCUMENTROOT && chmod -R 777 $APACHE_DOCUMENTROOT/compiled
else
    echo "=> Using an existing php4dvd website"
fi


# Start apache
/usr/sbin/apache2 -D FOREGROUND
