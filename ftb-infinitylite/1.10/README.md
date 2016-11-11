# ftb-infinitylite
Feed The Beast Infinity Lite 1.10 modpack
made by Feed The Beast at https://feed-the-beast.com

Modpack for current Minecraft
Infinity Lite is a mix of Tech and Magic mods compiled into a medium sized modpack from the FTB team that is designed for solo play as well as small and medium population servers.
A minimum of 4 GB of RAM is recommend for clients as well as servers for best performance.
Fastcraft is enabled in this pack by default.

<img src="http://media-elerium.cursecdn.com/avatars/54/737/636137851254751600.png" width="256" height="256">

NOTE: In compliance with Mojang "End User License Agreement", you will need to agree to the EULA in order to run your own Minecraft server. By using this container you acknowledge the EULA! If you do not agree, then you are not permitted to use this container!
https://account.mojang.com/documents/minecraft_eula

The worldname must be the default "world". 
Settings will reset when upgrading.
Access the console to op and whitelist.

Running ftb-infinitylite data container:
docker run --name [name of your data container] jonasbonno/ftb-infinitylite echo 'Data-only container'

Running ftb-infinitylite server:
docker run --tty=true --interactive=true --detach=true --name=[name of your container] --volumes-from [name of your data container] --publish=[port on your host]:25565 jonasbonno/ftb-infinitylite

To access the console:
</br>docker attach [name of container]
</br>Run your commands
</br>To exit: Hold CTRL + press P & press Q

The first time the server starts it creates the server.properties file with default settings and spawns "world". 
Not recommended to change these settings be hand.

When upgrading:
To upgrade delete ftb-infinitylite server and start new ftb-infinitylite server with --volumes-from [name of your data container].
Settings will reset when upgrading.
Access the console to op and whitelist.
