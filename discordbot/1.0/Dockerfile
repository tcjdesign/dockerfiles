FROM ubuntu:14.04


MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)


# Installing dependencies
RUN add-apt-repository -y ppa:fkrull/deadsnakes
RUN apt-get update && apt-get install -y \
  libopus0 \
	libssl-dev \
	python3-pip \
	git \
	make \
	nasm \
	pkg-config \
	libx264-dev \
	libxext-dev \
	libxfixes-dev \
	zlib1g-dev && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*


# Installing more dependencies
RUN alias python=python3.5
RUN git clone https://github.com/FFmpeg/FFmpeg.git /root
RUN ./root/FFmpeg/configure --enable-nonfree --enable-gpl --enable-libx264 --enable-x11grab --enable-zlib --enable-openssl
RUN make
RUN make install
RUN pip3 install git+https://github.com/Rapptz/discord.py@async
RUN pip3 install requests
RUN pip3 install youtube_dl
RUN pip3 install beautifulsoup4
RUN cp -R /usr/local/lib/python3.4/dist-packages/* /usr/local/lib/python3.5/dist-packages
RUN git clone https://github.com/Twentysix26/Red-DiscordBot.git /root


# Adding startscript and executes it
ADD start.sh /start.sh
RUN chmod 0755 /start.sh
CMD ["bash", "start.sh"]
