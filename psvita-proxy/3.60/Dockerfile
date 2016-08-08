FROM debian:sid


MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)


# Installing dependencies
RUN dpkg --add-architecture i386 && \
 	apt-get update && apt-get install -y \
 	wine:i386 && \
	megatools && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*


# Downloading Vita Update Blocker v1.2 (for Vita firmware 3.60)
RUN mkdir /vita && cd /vita && megadl https://mega.nz/#\!ydoDkSIS\!8rvQ0osIIy1Od8z8dbGAo0naDm_ToUSzOoztkXiyXxQ


# Define default command.
CMD ["/usr/bin/wine", "/vita/vita_update_blocker_v1.2.exe"]
