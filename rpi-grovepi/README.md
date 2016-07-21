#rpi-grovepi

Raspberry Pi with GrovePi.

Use Raspberry Pi with HypriotOS.

1 - Install i2c-tools and raspi-config with apt
  sudo apt-get install i2c-tools raspi-config
  
2 - Add the following two lines to /boot/config.txt
  dtparam=i2c1=on
  dtparam=i2c_arm=on
  
3 - Enable I2C with raspi-config (Advanced -> I2C -> Enable)

4 - Reboot the Raspberry Pi

5 - Check if the Raspberry Pi is now connected to the GrovePi with the following command
  sudo i2cdetect -y 1
  
If you can see a “04” in the output, this means the Raspberry Pi is able to detect the GrovePi!
