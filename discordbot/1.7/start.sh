#!/bin/bash

# Upgrading pip
pip3 install --upgrade pip3

# Updates discordbot from Twentysix GitHub
git pull

# Updates discord.py and pip modules
pip3 install install --upgrade -r requirements.txt
pip3 install --upgrade imgurpython

# Start python script
python3.5 red.py
