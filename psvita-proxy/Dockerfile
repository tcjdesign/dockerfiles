FROM tianon/wine:32


MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)


RUN apt-get update && apt-get install -y \
	megatools &&\
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*


RUN mkdir /vita && cd /vita && megadl https://mega.nz/#\!ydoDkSIS\!8rvQ0osIIy1Od8z8dbGAo0naDm_ToUSzOoztkXiyXxQ


# Define default command.
CMD ["/usr/bin/wine", "/vita/vita_update_blocker_v1.2.exe"]
