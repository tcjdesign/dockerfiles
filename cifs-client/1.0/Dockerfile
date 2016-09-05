FROM lsiobase/xenial

MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)

# Installing dependencies
RUN apt-get update && apt-get install -y \
  cifs-utils && \
  rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

# Creating folder
RUN mkdir -p /mnt/samba

# Exposes volumes
VOLUME ["/mnt/samba"]

# Setting workdir
WORKDIR /mnt/samba

# Adding startscript and executes it
ADD start.sh /start.sh
RUN chmod 0755 /start.sh
CMD ["bash", "/start.sh"]
