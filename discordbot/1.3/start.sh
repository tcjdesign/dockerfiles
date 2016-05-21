#!/bin/bash

rm -Rf /root/Red-DiscordBot/data
cd /root/Red-DiscordBot && git pull

ln -s /data /root/Red-DiscordBot/data

if [[ ! -d /root/Red-DiscordBot/data/trivia ]]; then
	echo "data empty"
	git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git /tmp/Red-DiscordBot
	cp -R /tmp/Red-DiscordBot/data/* /data
	rm -Rf /tmp/Red-DiscordBot
else
	echo "data ok"
fi

cd /root/Red-DiscordBot && python red.py
