#!/bin/bash


# Updates discordbot from Twentysix GitHub
git pull


# Updates discord.py
pip3 install --upgrade git+https://github.com/Rapptz/discord.py@async


# Updates pip modules
pip3 install --upgrade beautifulsoup4 imgurpython youtube_dl PyNaCl


# Download default data folder if empty
if [[ ! -d /root/Red-DiscordBot/data/trivia ]]; then
	echo "data empty"
	git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git /tmp/Red-DiscordBot
	cp -R /tmp/Red-DiscordBot/data/* /root/Red-DiscordBot/data
	rm -Rf /tmp/Red-DiscordBot
else
	echo "data ok"
fi


# Start python script
python3.5 red.py
