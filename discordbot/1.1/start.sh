#!/bin/bash


# Updates discordbot from Twentysix GitHub
rm /root/Red-DiscordBot/data/red
cd /root/Red-DiscordBot && git pull


# Creates symbolic link to config
ln -s /red /root/Red-DiscordBot/data/red


# Start python script
cd /root/Red-DiscordBot && python3 red.py
