#rpi-grovepi - v1.0
Raspberry Pi with a GrovePi Docker container

1 - Download and flash the Raspberry Pi with HypriotOS from https://hypriot.com/

2 - Install i2c-tools and raspi-config with apt
- sudo apt-get install i2c-tools raspi-config

3 - Add the following two lines to /boot/config.txt
- dtparam=i2c1=on
- dtparam=i2c_arm=on

4 - Enable I2C with raspi-config (Advanced -> I2C -> Enable)
- sudo raspi-config

5 - Reboot the Raspberry Pi
- sudo shutdown -r now

6 - Check if the Raspberry Pi is now connected to the GrovePi with the following command
- sudo i2cdetect -y 1
  
If you can see a “04” in the output, this means the Raspberry Pi is able to detect the GrovePi!

Source: https://github.com/JonasBonno/dockerfiles
