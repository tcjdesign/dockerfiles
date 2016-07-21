FROM hypriot/rpi-python


MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)


# Installing dependencies
RUN apt-get update && apt-get install -y \
  gcc \
  make \
  python-dev \
  python-smbus \
  i2c-tools \
  git && \
  apt-get clean && \ 
  rm -rf /var/lib/apt/lists/*


# Installing more dependencies
RUN pip install RPi.GPIO
RUN git clone git://github.com/DexterInd/GrovePi.git
RUN cd /data/GrovePi/Software/Python/ && python setup.py install


# Run
CMD ["/bin/bash"]
