#rpi-grovepi-python - v1.0
GrovePi Docker container for Raspberry Pi running a Python script

Do the following on your Raspberry Pi Docker host before running the container: https://github.com/JonasBonno/dockerfiles/blob/master/rpi-grovepi

To run container: docker run --tty=true --interactive=true --detach=true --privileged --volume=/dev/i2c-1:/dev/i2c-1 --volume=/path/to/scripfolder:/data/python jonasbonno/rpi-grovepi-python:1.0

NOTE: Your python script must be executed with the filename "main.py" in the root of "/data/python"

To access the console: 
- docker attach [name of container] bash

Run your commands
To exit again press CTRL+P and then CTRL+Q

Source: https://github.com/JonasBonno/dockerfiles
